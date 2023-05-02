import argparse
import sys

import omero.clients
from omero.cli import cli_login
from omero.gateway import BlitzGateway

# Swap Images between 2 Filesets. Input is Fileset, Image, Plate or Screen
# Usage: $ python swap_filesets.py Image:1 Image:2 --report --dry-run

def swap_fileset(conn, old_fileset, new_fileset, report = False, dryrun = False):

    if report:
        print("Swapping images between Fileset %s and Fileset %s" %
              (old_fileset.id, new_fileset.id))
    first_file = new_fileset.listFiles()[0]
    file_path = first_file.getPath()
    # remove any path after .zarr
    if ".zarr" in file_path:
        file_path = file_path.split(".zarr")[0] + ".zarr"

    new_images = new_fileset.copyImages()
    old_images = old_fileset.copyImages()

    # link all OLD Images to the NEW Fileset
    for image in old_images:
        if report:
            print("Moving Image: %s to Fileset: %s" % (img.id, new_fileset.id))
        if dryrun:
            continue
        img = image._obj
        img.fileset = omero.model.FilesetI(new_fileset.id, False)
        conn.getUpdateService().saveObject(img, conn.SERVICE_OPTS)

    # link all NEW Images (to be deleted) to the OLD Fileset
    for image in new_images:
        if report:
            print("Moving Image: %s to Fileset: %s" % (img.id, old_fileset.id))
        if dryrun:
            continue
        img = image._obj
        img.fileset = omero.model.FilesetI(old_fileset.id, False)
        conn.getUpdateService().saveObject(img, conn.SERVICE_OPTS)

    # Print the HQL updates we need to update each Pixels to new Fileset file
    # Set it to dataset.zarr/OME/METADATA.ome.xml since this works for Plates (Images???)
    print(f"UPDATE pixels SET name = 'METADATA.ome.xml', path = '{file_path}/OME' where image in (select id from Image where fileset = {new_fileset.id});")


def get_object(conn, obj_string):
    for dtype in ["Screen", "Plate", "Image", "Fileset"]:
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
        for well in obj.listChildren():
            for ws in well.listChildren():
                image = ws.getImage()
                return image.getFileset()


def main(argv):
    """
    For all the Images in the old Screen, Plate, Image or Fileset, we swap the Fileset with the equivalent
    Images in the new Screen, Plate, Image or Fileset (both old and new Images are updated).
    Also prints an sql command(s) to update the pixels in the NEW Images only.
    For Screens containing multiple Plates (Filesets), we match the Plates by Name
    """
    parser = argparse.ArgumentParser()
    parser.add_argument('old_object', help='Object:ID where Object is Screen, Plate, Image, Fileset')
    parser.add_argument('new_object', help='Object:ID where Object is Screen, Plate, Image, Fileset')
    parser.add_argument("--report", action="store_true", help="Print logs")
    parser.add_argument("--dry-run", action="store_true", help="Don't save any changes")
    args = parser.parse_args(argv)
    old_object = args.old_object
    new_object = args.new_object

    with cli_login() as cli:
        conn = BlitzGateway(client_obj=cli._client)
        if ":" not in old_object or ":" not in new_object:
            print("Use e.g. $ python swap_fileset Plate:123 Plate:456")
        # make sure we are dealing with same types:
        assert (old_object.split(":")[0] == new_object.split(":")[0])

        if "Screen" in old_object:
            old_screen = get_object(conn, old_object)
            new_screen = get_object(conn, new_object)
            old_plates_by_name = {}
            for plate in old_screen.listChildren():
                old_plates_by_name[plate.getName()] = plate

            for new_plate in new_screen.listChildren():
                name = new_plate.getName()
                if name not in old_plates_by_name:
                    print(f"No Plate named {name} in {old_object}")
                old_fileset = get_fileset(conn, f"Plate:{old_plates_by_name[name].id}")
                new_fileset = get_fileset(conn, f"Plate:{new_plate.id}")
                swap_fileset(conn, old_fileset, new_fileset, args.report, args.dry_run)

        else:
            old_fileset = get_fileset(conn, old_object)
            new_fileset = get_fileset(conn, new_object)
            swap_fileset(conn, old_fileset, new_fileset, args.report, args.dry_run)


if __name__ == '__main__':
    main(sys.argv[1:])
