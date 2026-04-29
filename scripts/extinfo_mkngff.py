"""
This script processes Projects or Screens and sets external info metadata on images
to reference the zarr URL. This only works for the "mkngff" images, because their 
"getImportedImageFilePaths" contains the http:// URL to the zarr file!
"""

import sys
import argparse
import requests

from omero.cli import cli_login
from omero.gateway import BlitzGateway
from omero.model import ExternalInfoI
from omero.rtypes import rstring, rlong
from urllib.parse import urlsplit

AWS_DEFAULT_ENDPOINT = "s3.us-east-1.amazonaws.com"

plate_cache = dict()


def get_images(conn, container_id, is_screen=False):
    """Iterate over images in an OMERO container.
    
    Args:
        conn: OMERO BlitzGateway connection
        container_id: ID of the container (Project or Screen)
        is_screen: If True, process as Screen; if False, process as Project
        
    Yields:
        tuple: (parent_name, position, image) where:
            - parent_name: plate name (for screens) or dataset name (for projects)
            - position: well position string like "A/123/0" (for screens) or "" (for projects)
            - image: OMERO image object
    """
    if is_screen:
        screen = conn.getObject('Screen', attributes={'id': container_id})
        for plate in screen.listChildren():
            for well in plate.listChildren():
                index = well.countWellSample()
                well_pos = well.getWellPos()
                well_pos = f"{well_pos[0]}/{well_pos[1:]}"
                for index in range(0, index):
                    pos = f"{well_pos}/{index}"
                    yield plate.getName(), pos, well.getImage(index)
    else:
        project = conn.getObject('Project', attributes={'id': container_id})
        for dataset in project.listChildren():
            for image in dataset.listChildren():
                yield dataset.getName(), "", image


def get_filepaths_info(img, plate_name=None):
    """Get the base file path for an image.
    
    Uses a cache for plate names to avoid repeated lookups of the same path.
    
    Args:
        img: OMERO image object
        plate_name: Optional plate name for caching (used with screens)
        
    Returns:
        str: Base directory path of the imported image file
    """
    if plate_name and plate_name in plate_cache:
        return plate_cache[plate_name]
    path = img.getImportedImageFilePaths()["client_paths"][0]
    base, _ = path.rsplit("/", 1)
    if plate_name:
        plate_cache[plate_name] = base
    return base


def set_ext_info(conn, img, path, skip_if_set=False):
    """Set external info metadata on an OMERO image.
    
    Creates or updates the external info to reference NGFF multiscales data.
    
    Args:
        conn: OMERO BlitzGateway connection
        img: OMERO image object
        path: Path to the NGFF multiscales data
        skip_if_set: If True, skip setting external info if it already exists
    """
    img = conn.getObject('Image', img.getId())
    extinfo = img.getExternalInfo()
    if extinfo:
        if skip_if_set:
            return
    else:
        extinfo = ExternalInfoI()
    extinfo.entityId = rlong(3)
    extinfo.entityType = rstring("com.glencoesoftware.ngff:multiscales")
    extinfo.lsid = rstring(path)
    img.details.externalInfo = extinfo
    us = conn.getUpdateService()
    extinfo = us.saveAndReturnObject(extinfo)
    img = us.saveAndReturnObject(img._obj)


def check(path):
    """Verify that an NGFF path is valid by checking for multiscales in .zattrs file.
    
    Args:
        path: Path to check for NGFF data
        
    Returns:
        str or None: The valid path if multiscales exists, None otherwise
    """
    
    if not path.startswith(("http://", "https://")):
        return None

    # None bioformats layout or plate image
    response = requests.get(f"{path}/.zattrs")
    if response.status_code == 200:
        try:
            data = response.json()
            if "multiscales" in data:
                return path
        except (ValueError, KeyError):
            pass
    
    # Bioformats layout ('0' series)
    response = requests.get(f"{path}/0/.zattrs")
    if response.status_code == 200:
        try:
            data = response.json()
            if "multiscales" in data:
                return f"{path}/0"
        except (ValueError, KeyError):
            pass
    
    return None


def http_to_s3(uri: str) -> str:
    """
    Convert http/https URI to s3 URI
    """
    parsed_uri = urlsplit(uri)
    endpoint = "https://" + f"{parsed_uri.netloc}"
    path = f"{parsed_uri.path}"
    scheme = f"{parsed_uri.scheme}"
    if "http" not in scheme:
        return uri
    if path.startswith("/"):
        path = path[1:]
    uri = "s3://" + path
    uri = format_s3_uri(uri, endpoint)
    uri = uri + "?anonymous=true"
    uri = uri.replace("uk1s3.embassy.ebi.ac.uk", "livingobjects.ebi.ac.uk")
    uri = uri.replace("bia-integrator-data", "bioimaging-integrator-data")
    uri = uri.replace("bia-idr-integration", "bioimaging-idr-integration")
    return uri


def format_s3_uri(uri: str, endpoint: str) -> str:
    """
    Combine endpoint and uri
    """
    parsed_uri = urlsplit(uri)
    url = f"{parsed_uri.netloc}"
    if endpoint:
        parsed_endpoint = urlsplit(endpoint)
        endpoint = f"{parsed_endpoint.netloc}"
    else:
        endpoint = AWS_DEFAULT_ENDPOINT
    return f"{parsed_uri.scheme}" + "://" + endpoint + "/" + url + f"{parsed_uri.path}"


def main(argv=None):
    parser = argparse.ArgumentParser(
        description="Process Projects or Screens and set external info metadata on images to reference zarr URLs.",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="Example: %(prog)s Project:123\n         %(prog)s Screen:456"
    )
    parser.add_argument(
        "container",
        help="Container specification in format <Type>:<ID> (e.g., Project:123 or Screen:456)"
    )
    parser.add_argument(
        "--skip-if-set",
        action="store_true",
        help="Skip setting external info if it already exists"
    )
    parser.add_argument(
        "--dry-run",
        action="store_true",
        help="Print info without setting external info (ignores --skip-if-set)"
    )

    parser.add_argument(
        "--s3",
        action="store_true",
        help="Convert http/https URLs to s3 URLs"
    )
    
    args = parser.parse_args(argv)
    
    container, container_id = args.container.split(":")
    container_id = int(container_id)
    is_screen = container.lower() == "screen"
    with cli_login() as c:
        conn = BlitzGateway(client_obj=c.get_client())
        for parent_name, pos, img in get_images(conn, container_id, is_screen=is_screen):
            if is_screen:
                path = get_filepaths_info(img, parent_name)
                path = f"{path}/{pos}"
            else:
                path = get_filepaths_info(img)
            checked_path = check(path)
            if checked_path:
                if args.s3:
                    checked_path = http_to_s3(checked_path)
                if args.dry_run:
                    print(f"[DRY RUN] Would set extinfo for image {img.getName()}({img.getId()}) to {checked_path}")
                else:
                    set_ext_info(conn, img, checked_path, skip_if_set=args.skip_if_set)
                    print(f"Set extinfo for image {img.getName()}({img.getId()}) to {checked_path}")
            else:
                print(f"Could not resolve {path} for image {img.getName()}({img.getId()})")


if __name__ == "__main__":
    main()
