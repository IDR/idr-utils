from omero.gateway import BlitzGateway
from omero.model import MapAnnotationI
import pandas
import sys
import os


def printusage():
    print('''
Checks an IDR dataset to make sure each image/well has an annotation.
Prints the images/wells which don't have any annotations to stdout.

If an annotation.csv is provided the images will be checked if they have
a corresponding entry in the annotation.csv. If it is omitted the images
will simply be check if they have at least one annotation attached.

Usage:
python check_annotations.py Project:[Project ID] [path to annotation.csv] >> \
no_annotations.csv
or
python check_annotations.py Screen:[Screen ID] [path to annotation.csv] >> \
no_annotations.csv

Environment variables OMERO_USER, OMERO_PASSWORD, OMERO_HOST and OMERO_PORT
are not necessary but are taken into account if set.
          ''')
    sys.exit(1)


if len(sys.argv) < 2:
    printusage()
else:
    if sys.argv[1] == '-h' or sys.argv[1] == '--help':
        printusage()
    target = sys.argv[1].split(':')
    if target[0] == 'Project':
        projectId = int(target[1])
        screenId = None
    elif target[0] == 'Screen':
        screenId = int(target[1])
        projectId = None
    annoFile = None
    if len(sys.argv) == 3:
        annoFile = sys.argv[2]


host = os.environ.get('OMERO_HOST', 'localhost')
port = int(os.environ.get('OMERO_PORT', '4064'))


csv_data = set()
if annoFile:
    df = pandas.read_csv(annoFile)
    if projectId:
        for index, row in df.iterrows():
            csv_data.add("{}-{}".format(row["Dataset Name"],
                                        row["Image Name"]))
    elif screenId:
        for index, row in df.iterrows():
            csv_data.add("{}-{}".format(row["Plate"], row["Well"]))


conn = BlitzGateway(os.environ.get('OMERO_USER', 'public'),
                    os.environ.get('OMERO_PASSWORD', 'public'),
                    host=host, port=port)
conn.connect()


missing = False


def print_missing(a, b, iid=None):
    global missing
    if not missing:
        if iid:
            print("Missing annotations (Dataset, Image, ID):")
        else:
            print("Missing annotations (Plate, Well_Position):")
        missing = True
    if iid:
        print("%s,%s,%d" % (a, b, iid))
    else:
        print("%s,%s" % (a, b))


def check_annotations(anns):
    if anns:
        for ann in anns:
            if ann.OMERO_TYPE == MapAnnotationI:
                return True
    return False


if projectId:
    project = conn.getObject("Project", projectId)
    for ds in project.listChildren():
        for img in ds.listChildren():
            if csv_data:
                key = "{}-{}".format(ds.getName(), img.getName())
                if key not in csv_data:
                    print_missing(ds.getName(), img.getName(), iid=img.getId())
                else:
                    csv_data.remove(key)
            else:
                if not check_annotations(img.listAnnotations()):
                    print_missing(ds.getName(), img.getName(), iid=img.getId())
elif screenId:
    screen = conn.getObject("Screen", screenId)
    for pl in screen.listChildren():
        for well in pl.listChildren():
            if csv_data:
                key = "{}-{}".format(pl.getName(), well.getWellPos())
                if key not in csv_data:
                    print_missing(pl.getName(), well.getWellPos())
                else:
                    csv_data.remove(key)
            else:
                if not check_annotations(well.listAnnotations()):
                    print_missing(pl.getName(), well.getWellPos())

conn.close()

if csv_data:
    print("Warning: There are additional entries in %s which don't match any "
          "images (Dataset-Image respectively Plate-WellPosition):" % annoFile)
    for key in csv_data:
        print(key)

if not missing:
    print("All images have annotations.")
    exit(0)
else:
    exit(1)
