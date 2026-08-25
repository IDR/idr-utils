"""Update image ExternalInfo URLs for an OMERO project or screen.

The script rewrites S3 and local /bia-idr paths to Living Objects URLs,
checks that zarr.json or .zattrs is accessible, and then saves the update.
Use --dry-run to validate and preview changes without modifying OMERO.
"""

import argparse
import re
from collections import Counter
from urllib.error import HTTPError, URLError
from urllib.parse import parse_qsl, urlencode, urlsplit, urlunsplit
from urllib.request import urlopen

from omero.cli import cli_login
from omero.gateway import BlitzGateway
from omero.model import ExternalInfoI
from omero.rtypes import rlong, rstring
from omero.sys import ParametersI


TARGET_ENDPOINT = "livingobjects.ebi.ac.uk"
TARGET_BUCKET = "bioimaging-idr-integration"
HTTP_TIMEOUT = 10
TARGET_RE = re.compile(r"^(Project|Screen):(\d+)$")


def parse_target(value):
    match = TARGET_RE.fullmatch(value)
    if not match:
        raise argparse.ArgumentTypeError(
            "target must be in Project:123 or Screen:123 form"
        )
    return match.group(1), int(match.group(2))


def rewrite_url(value):
    parsed = urlsplit(value)
    path = parsed.path.rstrip("/")
    if not parsed.scheme and not parsed.netloc and path.startswith("/bia-idr/"):
        object_path = path.removeprefix("/bia-idr/")
    elif parsed.scheme.lower() == "s3" and parsed.netloc:
        path_parts = path.lstrip("/").split("/", 1)
        if len(path_parts) != 2 or not all(path_parts):
            return None
        object_path = path_parts[1]
    elif (
        parsed.scheme.lower() == "https"
        and parsed.netloc == TARGET_ENDPOINT
        and path.startswith(f"/{TARGET_BUCKET}/")
    ):
        object_path = path.removeprefix(f"/{TARGET_BUCKET}/")
    else:
        return None
    if not object_path:
        return None
    query = dict(parse_qsl(parsed.query, keep_blank_values=True))
    query["anonymous"] = "true"
    return urlunsplit(
        (
            "s3",
            TARGET_ENDPOINT,
            f"/{TARGET_BUCKET}/{object_path}",
            urlencode(query),
            parsed.fragment,
        )
    )


def metadata_urls(value):
    parsed = urlsplit(value)
    root = parsed.path.rstrip("/")
    return [
        urlunsplit(
            (
                "https",
                parsed.netloc,
                f"{root}/{metadata_file}",
                parsed.query,
                "",
            )
        )
        for metadata_file in ("zarr.json", ".zattrs")
    ]


def validate_url(value, opener=urlopen):
    errors = []
    for url in metadata_urls(value):
        try:
            with opener(url, timeout=HTTP_TIMEOUT) as response:
                status = response.status if hasattr(response, "status") else response.getcode()
                if 200 <= status < 300:
                    return True, url
                errors.append(f"{url}: HTTP {status}")
        except (HTTPError, URLError, TimeoutError, OSError) as exc:
            errors.append(f"{url}: {exc}")
    return False, "; ".join(errors)


def get_images(target, object_type):
    if object_type == "Project":
        for dataset in target.listChildren():
            yield from dataset.listChildren()
    else:
        for plate in target.listChildren():
            for well in plate.listChildren():
                for index in range(well.countWellSample()):
                    yield well.getImage(index)


def get_external_info(conn, image):
    details = image.getDetails()
    reference = details._externalInfo if details else None
    if reference is None or reference._id is None:
        return None
    params = ParametersI()
    params.addId(reference._id)
    return conn.getQueryService().findByQuery(
        "select e from ExternalInfo as e where e.id = :id",
        params,
        conn.SERVICE_OPTS,
    )


def replace_external_info(conn, image, external_info, new_url):
    replacement = ExternalInfoI()
    replacement.entityType = rstring(external_info.getEntityType().getValue())
    replacement.entityId = rlong(external_info.getEntityId().getValue())
    replacement.lsid = rstring(new_url)
    image._obj.details.externalInfo = replacement
    conn.getUpdateService().saveAndReturnObject(image._obj)


def process_images(conn, target, object_type, dry_run):
    counts = Counter()
    checked = set()
    validation_cache = {}
    for image in get_images(target, object_type):
        if image.id in checked:
            continue
        checked.add(image.id)
        label = f"Image:{image.id} {image.getName()}"
        try:
            external_info = get_external_info(conn, image)
            if external_info is None or external_info.getLsid() is None:
                counts["missing"] += 1
                print(f"SKIP {label}: no ExternalInfo URL")
                continue
            old_url = external_info.getLsid().getValue()
            new_url = rewrite_url(old_url)
            if new_url is None:
                counts["invalid"] += 1
                print(f"SKIP {label}: unsupported ExternalInfo URL: {old_url}")
                continue
            if new_url == old_url:
                counts["unchanged"] += 1
                print(f"OK   {label}: already uses the target URL")
                continue
            if new_url not in validation_cache:
                validation_cache[new_url] = validate_url(new_url)
            valid, result = validation_cache[new_url]
            if not valid:
                counts["inaccessible"] += 1
                print(f"SKIP {label}: Living Objects URL is inaccessible: {result}")
                continue
            if dry_run:
                counts["would_update"] += 1
                action = "WOULD UPDATE"
            else:
                replace_external_info(conn, image, external_info, new_url)
                counts["updated"] += 1
                action = "UPDATED"
            print(f"{action} {label}")
            print(f"  from: {old_url}")
            print(f"  to:   {new_url}")
            print(f"  via:  {result}")
        except Exception as exc:
            counts["errors"] += 1
            print(f"ERROR {label}: {exc}")
    counts["images"] = len(checked)
    return counts


def main():
    parser = argparse.ArgumentParser(
        description="Update image ExternalInfo URLs to Living Objects."
    )
    parser.add_argument(
        "target",
        type=parse_target,
        metavar="Project:ID|Screen:ID",
        help="OMERO project or screen containing the images",
    )
    parser.add_argument(
        "--dry-run",
        action="store_true",
        help="validate and display changes without saving them",
    )
    args = parser.parse_args()
    object_type, object_id = args.target

    with cli_login() as client:
        conn = BlitzGateway(client_obj=client.get_client())
        conn.SERVICE_OPTS.setOmeroGroup("-1")
        target = conn.getObject(object_type, object_id)
        if target is None:
            parser.error(f"no such {object_type}: {object_id}")
        counts = process_images(conn, target, object_type, args.dry_run)

    print("Summary: " + ", ".join(f"{key}={value}" for key, value in counts.items()))
    if counts["errors"]:
        raise SystemExit(1)


if __name__ == "__main__":
    main()

