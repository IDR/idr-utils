import omero.cli
import requests
import argparse
import re
from concurrent.futures import ThreadPoolExecutor, as_completed


URL = "<BASE_URL>/webclient/api/annotations/?type=map&parents=true&<TYPE>=<ID>"


def request(base_url, obj, is_well):
    if is_well:
        url = URL.replace("<BASE_URL>", base_url).replace("<TYPE>", "well").replace("<ID>",str(obj.getId()))
    else:
        url = URL.replace("<BASE_URL>", base_url).replace("<TYPE>", "image").replace("<ID>",str(obj.getId()))
    r = requests.get(url)
    try:
        r.json()
    except ValueError as e:
        return f"{url} -> Invalid JSON response"
    return f"{url} -> {r.status_code}"


def get_objects(conn, container):
    """
    Returns a list of images and wells to process.
    Each item is a tuple of (image|well, is_well).
    """
    m = re.compile(r"(?P<con_type>Screen|Project):(?P<con_id>\d+)").match(container)
    if not m:
        raise ValueError("Invalid container: %s" % container)
    container = conn.getObject(m.group("con_type"), attributes={"id": m.group("con_id")})
    res = []
    if m.group("con_type") == "Project":
        for dataset in container.listChildren():
            for image in dataset.listChildren():
                res.append((image, False))
    elif m.group("con_type") == "Screen":
        for plate in container.listChildren():
            for well in plate.listChildren():
                res.append((well, True))
                for ws in well.listChildren():
                    res.append((ws.getImage(), False))
    else:
        raise ValueError("Invalid container type: %s" % m.group("con_type"))
    return res


with omero.cli.cli_login() as c:
    conn = omero.gateway.BlitzGateway(client_obj=c.get_client())

    parser = argparse.ArgumentParser(description="Recache annotations")
    parser.add_argument("container", help="Container to process (Project or Screen) (e.g. Project:123)")
    parser.add_argument("--base-url", default="http://localhost:1080", help="Base URL (default: http://localhost:1080)")
    args = parser.parse_args()

    objs = get_objects(conn, args.container)

    with ThreadPoolExecutor() as executor:
        futures = [
            executor.submit(request, args.base_url, obj, is_well)
            for obj, is_well in objs
        ]
        for future in as_completed(futures):
            try:
                print(future.result())
            except Exception as e:
                print(f"Error processing object: {e}")
