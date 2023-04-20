import argparse
import sys
import os
import shutil

import omero.clients
from omero.cli import cli_login
from omero.gateway import BlitzGateway


def create_symlinks(conn, fileset, args):

    template_path = os.path.join(args.repo, fileset.templatePrefix)

    if args.report:
        print("\nFileset:", fileset.id, template_path)
    # /data/OMERO/ManagedRepository/demo_2/Blitz-0-Ice.ThreadPool.Server-8/2023-04/07/13-29-24.048/

    # find files/dirs in Fileset template_path that are also in the symlink dir...
    fs_contents = os.listdir(template_path)
    if args.report:
        print("fs_contents", fs_contents)

    for fs_item in fs_contents:
        # check if item is in target dir
        symlink_target = os.path.join(args.target, fs_item)
        if not os.path.exists(symlink_target):
            print("Symlink target not found:", symlink_target)
            continue
        symlink_source = os.path.join(template_path, fs_item)
        if args.report:
            print(f"Link from {symlink_source} to {symlink_target}")
        if not args.dry_run:
            # delete directory
            try:
                shutil.rmtree(symlink_source)
            except:
                # in case the source is already a symlink (or a file)
                os.remove(symlink_source)
            # replace with symlink
            target_is_directory = os.path.isdir(symlink_target)
            os.symlink(symlink_target, symlink_source, target_is_directory)


def get_object(conn, obj_string):
    for dtype in ["Screen", "Plate", "Image", "Fileset", "Dataset"]:
        if obj_string.startswith(dtype):
            obj_id = int(obj_string.replace(dtype + ":", ""))
            obj = conn.getObject(dtype, obj_id)
            if obj is None:
                print(obj_string, "not found!")
            return obj
 

def get_fileset(conn, obj_string):
    """obj_string is Image:123 or Fileset:123 or Plate:123"""

    obj = get_object(conn, obj_string)
    if obj_string.startswith("Fileset:"):
        return obj
    if obj_string.startswith("Image:"):
        return obj.getFileset()
    if obj_string.startswith("Plate:"):
        well = list(obj.listChildren())[0]
        image = list(well.listChildren())[0].getImage()
        return image.getFileset()


def main(argv):
    """
    We go through all Filesets under the top-level Object, and check for items in the
    templatePrefix dir under ManagedRepository. If these items are also found in
    the target directory, we delete the item from the Managed Repo and replace it with
    a symlink to the equivalent dir (or file) in the target dir.
    """
    parser = argparse.ArgumentParser()
    parser.add_argument('object', help='Object:ID where Object is Screen, Plate, Dataset, Image, Fileset')
    parser.add_argument("target", help="path to dir that contains symlink targets")
    parser.add_argument("--repo", help="Managed Repo absolute path", default="/data/OMERO/ManagedRepository")
    parser.add_argument("--report", action="store_true", help="Print logs")
    parser.add_argument("--dry-run", action="store_true", help="Don't save any changes")
    args = parser.parse_args(argv)
    object_str = args.object

    with cli_login() as cli:
        conn = BlitzGateway(client_obj=cli._client)
        assert ":" in object_str

        obj_strings = [object_str]
        if "Screen" in object_str:
            screen = get_object(conn, object_str)
            obj_strings = [f"Plate:{plate.id}" for plate in screen.listChildren()]
        elif "Dataset" in object_str:
            dataset = get_object(conn, object_str)
            obj_strings = [f"Image:{image.id}" for image in dataset.listChildren()]

        for object_str in obj_strings:
            fileset = get_fileset(conn, object_str)
            create_symlinks(conn, fileset, args)


if __name__ == '__main__':
    main(sys.argv[1:])
