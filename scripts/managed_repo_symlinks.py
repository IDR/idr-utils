import argparse
import csv
import sys
import os
import shutil

import omero.clients
from omero.cli import cli_login
from omero.gateway import BlitzGateway


def create_symlinks(conn, fileset_id, args):

    fileset = conn.getQueryService().get("Fileset", fileset_id, conn.SERVICE_OPTS)
    template_path = os.path.join(args.repo, fileset.templatePrefix.val)

    if args.report:
        print("\nFileset:", fileset.id.val, template_path)
    # /data/OMERO/ManagedRepository/demo_2/Blitz-0-Ice.ThreadPool.Server-8/2023-04/07/13-29-24.048/

    preview_image(conn, fileset_id, args)

    fileset_dirs = {}
    # handle fileset_mappings
    if args.fileset_mappings:
        with open(args.fileset_mappings, newline='') as csvfile:
            csvreader = csv.reader(csvfile, delimiter=' ', quotechar='|')
            for row in csvreader:
                fileset_dirs[row[0]] = row[1]

    # find files/dirs in Fileset template_path that are also in the symlink dir...
    fs_contents = os.listdir(template_path)
    if args.report:
        print("fs_contents", fs_contents)

    for fs_item in fs_contents:
        # check if item is in target dir
        target_dir = fileset_dirs.get(fs_item, fs_item)
        symlink_target = os.path.join(args.target, target_dir)
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


def preview_image(conn, fileset_id, args):

    params = omero.sys.ParametersI()
    params.addId(fileset_id)
    params.page(0, 1)
    query = "select img from Image img where img.fileset.id=:id"
    first_image = conn.getQueryService().findAllByQuery(query, params, conn.SERVICE_OPTS)[0]

    if args.report:
        print("Render Image", first_image.id.val)
    image = conn.getObject("Image", first_image.id.val)
    image.renderJpeg()


def get_object(conn, obj_string):
    for dtype in ["Screen", "Plate", "Image", "Fileset", "Dataset"]:
        if obj_string.startswith(dtype):
            obj_id = int(obj_string.replace(dtype + ":", ""))
            obj = conn.getObject(dtype, obj_id)
            if obj is None:
                print(obj_string, "not found!")
            return obj
 

def get_fileset_id(conn, obj_string):
    """obj_string is Image:123 or Fileset:123 or Plate:123"""

    # We never do conn.getObject("Fileset") as it loads
    # all original files and images - can be too slow
    if obj_string.startswith("Fileset:"):
        return int(obj_string.replace("Fileset:", ""))

    obj = get_object(conn, obj_string)
    if obj_string.startswith("Image:"):
        return obj.fileset.id.val
    if obj_string.startswith("Plate:"):
        well = list(obj.listChildren())[0]
        image = list(well.listChildren())[0].getImage()
        return image.fileset.id.val


def main(argv):
    """
    We go through all Filesets under the top-level Object, and check for items in the
    templatePrefix dir under ManagedRepository. If these items are also found in
    the target directory, we delete the item from the Managed Repo and replace it with
    a symlink to the equivalent dir (or file) in the target dir.
    If fileset-mappings csv file is given, we map from fileset name e.g. plate1.zarr to a differently
    named directory within the `target`, e.g. abc123/abc123.zarr (pattern used by BioStudies).
    Each row of csv should be e.g. "plate1.zarr, abc123/abc123.zarr"
    """
    parser = argparse.ArgumentParser()
    parser.add_argument('object', help='Object:ID where Object is Screen, Plate, Dataset, Image, Fileset')
    parser.add_argument("target", help="path to dir that contains symlink targets")
    parser.add_argument("--fileset-mappings", help="Optional path/to/file.csv where each row is: fs_name, symlink_target")
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
            fileset_id = get_fileset_id(conn, object_str)
            create_symlinks(conn, fileset_id, args)


if __name__ == '__main__':
    main(sys.argv[1:])
