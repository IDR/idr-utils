
import argparse
import os
import sys
from omero.cli import cli_login
from omero.gateway import BlitzGateway

import xml.etree.ElementTree as ET

def rename_images(conn, fileset_id, args):

    fileset = conn.getObject("Fileset", fileset_id)

    if args.report:
        print("\nFileset:", fileset.id)

    xml_file = None
    for file in fileset.listFiles():
        print(file.id, file.path, file.name)
        if file.name == "METADATA.ome.xml":
            xml_file = file
            break
    if xml_file is None:
        print("METADATA.ome.xml not found")
        return
    
    # serverExceptionClass = ome.conditions.SecurityViolation
    # message = Download is restricted for ome.model.core.OriginalFile:Id_64567059
    # xml_chunks = list(xml_file.getFileInChunks())
    # xml_text = xml_chunks.join(b"").decode("utf-8")
    # print(xml_text)

    # TODO: Open file directly from "ManagedRepository"
    # with open("/Users/wmoore/Desktop/IDR/Volkava/METADATA.ome.xml") as f:
    #     xml_text = f.read()
    #     print(xml_text)

    #     root = ET.fromstring(xml_text)
    #     image_names = []
    #     for child in root:
    #         # In this case, images have empty names!
    #         print(child.tag, child.attrib)

    
    # Just use the path/to/image_name.zarr/OME/METADATA.ome.xml to get image_name
    print("xml_file.path:", xml_file.path)
    name_path = os.path.join(xml_file.path, xml_file.name)
    img_name = os.path.basename(name_path.replace("/OME/METADATA.ome.xml", ""))
    img_name = img_name.replace(".zarr", "")
    print("img_name:", img_name)

    for image in fileset.copyImages():
        img_series = image.name.split(" [")[-1]
        if args.report:
            print("Image:", image.id, image.name)
        new_name = f"{img_name} [{img_series}"
        if args.report:
            print("  New name:", new_name)
        if not args.dry_run:
            image.setName(new_name)
            image.save()


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
    We go through all Filesets under the top-level Object, and load the OME/METADATA.ome.xml
    for each. This is used to rename the images in the Fileset.
    """
    parser = argparse.ArgumentParser()
    parser.add_argument('object', help='Object:ID where Object is Screen, Plate, Dataset, Image, Fileset')
    parser.add_argument("--report", action="store_true", help="Print logs")
    parser.add_argument("--dry-run", action="store_true", help="Don't save any changes")
    args = parser.parse_args(argv)
    object_str = args.object

    processed_filesets = set()

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
            if fileset_id in processed_filesets:
                continue
            rename_images(conn, fileset_id, args)
            processed_filesets.add(fileset_id)


if __name__ == '__main__':
    main(sys.argv[1:])
