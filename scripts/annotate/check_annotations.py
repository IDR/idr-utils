from omero.gateway import BlitzGateway
from omero.model import MapAnnotationI
import pandas
import sys
import os


def printusage():
    print('''
Checks an IDR dataset to make sure each image/well has an annotation.
Prints the images/wells which don't have any annotations to stderr.

If an annotation.csv is provided it will be checked that all images have
a corresponding entry in there. The images themselves won't be checked!
Useful pre-annotation, in order to see if the annotation.csv file is correct.

If no annotation.csv is provided the images themselves will be check if
they have at least one map annotation attached. Useful post-annotation,
to verify that there a no non-annotated images.

Usage:
python check_annotations.py Project:[Project ID] <path to annotation.csv>
or
python check_annotations.py Screen:[Screen ID] <path to annotation.csv>


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


# Keep track of detected problems
problems = set()


def flag_error(container, image, reason):
    """ Prints an error to stderr and keeps track of reason
    container: str
        Name of the container (Dataset or Plate)
    image: str
        Name of the image or well position
    reason: str
        The nature of the problem
    """
    problems.add(reason)
    print("{},{},{}".format(container, image, reason), file=sys.stderr)


def check_annotations(anns):
    """ Checks if there are annotations and they contain
    at least one MapAnnotation
    anns: list
        of annotations
    Returns: True if there is at least one MapAnnotation
    """
    if anns:
        for ann in anns:
            if ann.OMERO_TYPE == MapAnnotationI:
                return True
    return False


# Contains all unique Dataset/Image name resp. Plate/Well pos 
# entries gathered from the csv file.
csv_data = set()

if annoFile:
    df = pandas.read_csv(annoFile)
    if projectId:
        for index, row in df.iterrows():
            key = "{},{}".format(row["Dataset Name"],
                                 row["Image Name"])
            if key in csv_data:
                flag_error(row["Dataset Name"], row["Image Name"], "Duplicate entry in csv file")
            csv_data.add(key)
    elif screenId:
        for index, row in df.iterrows():
            key = "{},{}".format(row["Plate"], row["Well"])
            if key in csv_data:
                flag_error(row["Plate"], row["Well"], "Duplicate entry in csv file")
            csv_data.add(key)


conn = BlitzGateway(os.environ.get('OMERO_USER', 'public'),
                    os.environ.get('OMERO_PASSWORD', 'public'),
                    host=host, port=port)
conn.connect()

# Keeps track of all Dataset/Image name resp. Plate/Well pos
# combinations in the Project/Screen.
images = set()

if projectId:
    project = conn.getObject("Project", projectId)
    if not project:
        print("There's no Project with this id.")
        sys.exit(1)
    for ds in project.listChildren():
        for img in ds.listChildren():
            key = "{},{}".format(ds.getName(), img.getName())
            if csv_data:
                if key not in csv_data:
                    flag_error(ds.getName(), img.getName(), "No annotations")
                else:
                    csv_data.remove(key)
            else:
                if not check_annotations(img.listAnnotations()):
                    flag_error(ds.getName(), img.getName(), "No annotations")
            if key in images:
                flag_error(ds.getName(), img.getName(), "Dataset/Image not unique")
            else:
                images.add(key)
elif screenId:
    screen = conn.getObject("Screen", screenId)
    if not screen:
        print("There's no Screen with this id.")
        sys.exit(1)
    for pl in screen.listChildren():
        for well in pl.listChildren():
            if well.getWellSample():
                key = "{},{}".format(pl.getName(), well.getWellPos())
                if csv_data:
                    if key not in csv_data:
                        flag_error(pl.getName(), well.getWellPos(), "No annotations")
                    else:
                        csv_data.remove(key)
                else:
                    if not check_annotations(well.listAnnotations()):
                        flag_error(pl.getName(), well.getWellPos(), "No annotations")
                if key in images:
                    flag_error(pl.getName(), well.getWellPos(), "Plate/Well not unique")
                else:
                    images.add(key)

conn.close()

if csv_data:
    print("Warning: There are additional entries in %s which don't match any "
          "images (Dataset,Image respectively Plate,WellPosition):" % annoFile)
    for key in csv_data:
        print(key)

if not problems:
    print("All images are unique and have annotations.")
    sys.exit(0)
else:
    print("Problem(s) detected:")
    for prob in problems:
        print(prob)
    print("See stderr output for details.")
    sys.exit(1)
