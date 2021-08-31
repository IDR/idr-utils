import argparse
import re
import omero.cli

DESC = '''
Find images with a specific name.
'''

parser = argparse.ArgumentParser(description=DESC)
parser.add_argument("regex", help="Regular expression to match the image name")
parser.add_argument("container", help="Project:ID or Dataset:ID")
parser.add_argument("-i",  "--ignorecase", action="store_true", default=False,
                    help="Match case-insensitive")
parser.add_argument("-v",  "--invert", action="store_true", default=False,
                    help="Find non-matching images")
parser.add_argument("-n",  "--name", action="store_true", default=False,
                    help="Also print image names (default: only output Image:ID)\
                    e.g. to check that the regex really does what you expect.")
args = parser.parse_args()


def get_images(conn):
    con_type = args.container.split(':')[0]
    con_id = int(args.container.split(':')[1])
    container = conn.getObject(con_type, attributes={'id': con_id})
    if con_type == 'Project':
        for dataset in container.listChildren():
            for image in dataset.listChildren():
                yield image
    elif con_type == 'Dataset':
        for image in container.listChildren():
            yield image


def main(conn):
    if args.ignorecase:
        exp = re.compile(args.regex, re.IGNORECASE)
    else:
        exp = re.compile(args.regex)

    for img in get_images(conn):
        if (exp.search(img.name) and not args.invert) or\
           (not exp.search(img.name) and args.invert):
            if args.name:
                print(f"{img.name}\tImage:{img.id}")
            else:
                print(f"Image:{img.id}")


if __name__ == '__main__':
    with omero.cli.cli_login() as c:
        conn = omero.gateway.BlitzGateway(client_obj=c.get_client())
        main(conn)
