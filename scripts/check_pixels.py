
# Check that the pixel values for images on logged-in server exactly
# match the values for same images (same IDs) on IDR server.
# Used to validate that updating IDR (e.g. swap Fileset for NGFF or
# different Bio-Formats reader etc) doesn't change pixel values

import argparse
import sys
import numpy as np
from datetime import datetime

import omero
from omero.cli import cli_login
from omero.gateway import BlitzGateway


def log(message):
    print(message)


def check_image(idr_conn, image, max_planes, check_timing=False):

    try:
        sizeZ = image.getSizeZ()
        sizeC = image.getSizeC()
        sizeT = image.getSizeT()
        if max_planes is not None:
            # 'sizeC' or number
            if max_planes == "sizeC":
                max_planes = sizeC
            else:
                max_planes = int(max_planes)

        zctList = []
        # if max_planes == sizeC, we'll get 1 plane from each Channel
        for z in range(sizeZ):
            for t in range(sizeT):
                for c in range(sizeC):
                    if max_planes is None or len(zctList) < max_planes:
                        zctList.append( (z,c,t) )

        start_local = datetime.now()
        planes = list(image.getPrimaryPixels().getPlanes(zctList))
        planes_time_local = datetime.now() - start_local

        if idr_conn is None:
            # We're not comparing with IDR, and we've done getting Planes...
            return

        idr_image = idr_conn.getObject("Image", image.id)
        if idr_image is None:
            log("Error: Image not found on IDR: %s" % image.id)
            return

        start_idr = datetime.now()
        idr_planes = list(idr_image.getPrimaryPixels().getPlanes(zctList))
        planes_time_idr = datetime.now() - start_idr

        if check_timing:
            ratio = planes_time_local / planes_time_idr
            log("Ratio of local/IDR timing for %s planes is %s Image: %s" % (len(zctList), ratio, image.id))
            log("Local took %s, IDR took %s" % (planes_time_local, planes_time_idr))

        for plane, idr_plane, idx in zip(planes, idr_planes, zctList):
            if not np.array_equiv(plane, idr_plane):
                log("Error: Mismatch for Image:%s %s at plane (z, c, t): %s" % (image.id, image.name, idx))
    except Exception as ex:
        log("Error: Image:%s %s %s" % (image.id, image.name, ex))


def get_object(conn, obj_string):
    for dtype in ["Screen", "Plate", "Project", "Dataset", "Image"]:
        if obj_string.startswith(dtype):
            obj_id = int(obj_string.replace(dtype + ":", ""))
            obj = conn.getObject(dtype, obj_id)
            if obj is None:
                print(obj_string, "not found!")
            return obj


def get_plate_images(plate, max_images):
    images = []
    for well in plate.listChildren():
        for ws in well.listChildren():
            images.append(ws.getImage())
            if max_images and len(images) >= max_images:
                return images
    return images
            

def get_images(conn, obj_string, max_images=0):
    obj = get_object(conn, obj_string)

    images = []
    if obj_string.startswith("Screen"):
        for plate in obj.listChildren():
            images.extend(get_plate_images(plate, max_images))

    elif obj_string.startswith("Plate"):
        images.extend(get_plate_images(obj, max_images))

    elif obj_string.startswith("Project"):
        for dataset in obj.listChildren():
            images.extend(list(dataset.listChildren()))

    elif obj_string.startswith("Dataset"):
        images.extend(list(obj.listChildren()))

    elif obj_string.startswith("Image"):
        images.append(obj)

    images.sort(key=lambda x:x.id)
    return images


def main(argv):
    """
    Swaps Fileset from 'Old Object' to 'New Object'.
    For all the Images in the 'Old Object' (Screen, Plate, Image or Fileset), we swap the
    Fileset to use the Fileset in the 'New Object'. Images in the `New Object` are left
    unlinked to any Fileset, and can then be deleted.
    Also prints an sql command(s) to update the pixels in the NEW Images only.
    For Screens containing multiple Plates (Filesets), we match the Plates by Name
    """
    parser = argparse.ArgumentParser()
    parser.add_argument('object', help='Object:ID where Object is Screen, Plate, Project, Dataset, Image')
    # parser.add_argument('logfile', help='File path to output log')
    parser.add_argument('--no-check', action="store_true",
                        help="If True, don't check against another server - use for perf testing")
    parser.add_argument('--max-images', type=int, default=0,
                        help='Max number of images per FILESET. Default is to check ALL')
    parser.add_argument('--max-planes',
                        help='Max number of planes to check per image or sizeC to check 1 from each Channel. Default is to check ALL')
    parser.add_argument('--timing', action="store_true", help="print timing difference between local and IDR")
    args = parser.parse_args(argv)

    max_images = args.max_images
    max_planes = args.max_planes
    obj_string = args.object
    start_time = datetime.now()
    log("Start: %s" % start_time)
    log("Checking %s" % obj_string)
    log('max_planes: %s' % max_planes)
    log('max_images: %s' % max_images)
    log('check timing: %s' % args.timing)

    with cli_login() as cli:
        conn = BlitzGateway(client_obj=cli._client)
        assert ":" in obj_string

        images = get_images(conn, obj_string, max_images)

        # Create connection to IDR server
        # NB: conn.connect() not working on IDR. Do it like this
        if args.no_check:
            log("no_check - Don't connect to idr")
            idr_conn = None
        else:
            log('connecting to idr.openmicroscopy.org')
            idr_client = omero.client(host="idr.openmicroscopy.org", port=4064)
            idr_client.createSession('public', 'public')
            idr_conn = BlitzGateway(client_obj=idr_client)

            idr_images = get_images(idr_conn, obj_string, max_images)

            # Check all images in IDR are also in local server
            img_ids = [img.id for img in images]
            idr_ids = [img.id for img in idr_images]
            if not img_ids == idr_ids:
                log("Error: Different Image IDs: %s" % list(set(idr_ids) - set(img_ids)))

        # Compare pixel values...
        total = len(images)
        for count, image in enumerate(images):
            log("%s/%s Check Image:%s %s" % (count, total, image.id, image.name))
            check_image(idr_conn, image, max_planes, check_timing=args.timing)

    log("End: %s" % datetime.now())

if __name__ == '__main__':
    main(sys.argv[1:])

