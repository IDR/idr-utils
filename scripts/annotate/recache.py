import omero.cli
import requests
import argparse
import re
from concurrent.futures import ThreadPoolExecutor, as_completed

"""
Recache annotations and thumbnails for a container (project or screen).

Usage:
    ssh idr-next -L 9000:localhost:9000 -L 4064:omeroreaadwrite:4064
    python recache.py --thumbs Project:123
"""

URL = "<BASE_URL>/webclient/api/annotations/?type=map&parents=true&<TYPE>=<ID>"
THUMBS_URL = "<BASE_URL>/webclient/get_thumbnails/?id=<IMAGE_ID>"


def request(base_url, obj, kind, thumbs=False):
    if thumbs:
        url = THUMBS_URL.replace("<BASE_URL>", base_url).replace("<IMAGE_ID>", str(obj.getId()))
    else:
        url = URL.replace("<BASE_URL>", base_url).replace("<TYPE>", kind).replace("<ID>",str(obj.getId()))
    r = requests.get(url)
    try:
        r.json()
    except ValueError as e:
        return f"{url} -> Invalid JSON response"
    return f"{url} -> {r.status_code}"


def get_objects(conn, container):
    """
    Returns a list of objects (image, well, dataset, 
    project, screen,or plate) to process.
    Each item is a tuple of (obj, kind).
    """
    m = re.compile(r"(?P<con_type>Screen|Project):(?P<con_id>\d+)").match(container)
    if not m:
        raise ValueError("Invalid container: %s" % container)
    container = conn.getObject(m.group("con_type"), attributes={"id": m.group("con_id")})
    res = []
    res.append((container, m.group("con_type").lower()))
    if m.group("con_type") == "Project":
        for dataset in container.listChildren():
            res.append((dataset, "dataset"))
            for image in dataset.listChildren():
                res.append((image, "image"))
    elif m.group("con_type") == "Screen":
        for plate in container.listChildren():
            res.append((plate, "plate"))
            for well in plate.listChildren():
                res.append((well, "well"))
                for ws in well.listChildren():
                    res.append((ws.getImage(), "image"))
    else:
        raise ValueError("Invalid container type: %s" % m.group("con_type"))
    return res


with omero.cli.cli_login() as c:
    conn = omero.gateway.BlitzGateway(client_obj=c.get_client())

    parser = argparse.ArgumentParser(description="Recache annotations")
    parser.add_argument("container", help="Container to process (Project or Screen) (e.g. Project:123)")
    parser.add_argument("--base-url", default="http://localhost:9000", help="Base URL (default: http://localhost:9000)")
    parser.add_argument("--thumbs", action="store_true", help="Also recache thumbnails")
    args = parser.parse_args()

    objs = get_objects(conn, args.container)
    with ThreadPoolExecutor() as executor:
        futures = [
            executor.submit(request, args.base_url, obj, kind)
            for obj, kind in objs
        ]
        for future in as_completed(futures):
            try:
                print(future.result())
            except Exception as e:
                print(f"Error processing object: {e}")
    
    if args.thumbs:
        objs = [obj for obj, kind in objs if kind == "image"]
        with ThreadPoolExecutor() as executor:
            futures = [
                executor.submit(request, args.base_url, obj, "image", thumbs=True)
                for obj in objs
            ]
            for future in as_completed(futures):
                try:
                    print(future.result())
                except Exception as e:
                    print(f"Error processing object: {e}")
