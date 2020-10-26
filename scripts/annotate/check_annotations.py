from omero.gateway import BlitzGateway
from omero.model import MapAnnotationI
import argparse
import logging
import pandas
import sys
import os


DESC = '''
Checks an IDR dataset to make sure each image/well has an annotation.

If an annotation.csv is provided it will be checked that all images have
a corresponding entry in there. The images themselves won't be checked!
Useful pre-annotation, in order to see if the annotation.csv file is correct.

If no annotation.csv is provided the images themselves will be check if
they have at least one map annotation attached. Useful post-annotation,
to verify that there a no non-annotated images.

Environment variables OMERO_USER, OMERO_PASSWORD, OMERO_HOST and OMERO_PORT
are not necessary but are taken into account if set.
'''

parser = argparse.ArgumentParser(description=DESC)
parser.add_argument("target", help="Project:123 or Screen:123")
parser.add_argument("file", nargs="?", help="The annotation.csv file")
parser.add_argument("-v", "--verbose", action="count", default=0,
                    help="Verbosity (-v, -vv, etc)")
parser.add_argument("-o", "--output",
                    help="Output a copy of annotation.csv with remarks.")


args = parser.parse_args()
loglevel = 30 - (args.verbose * 10)
logging.basicConfig(level=loglevel, format='%(levelname)s: %(message)s')


target = args.target.split(':')
if target[0] == 'Project':
    projectId = int(target[1])
    screenId = None
elif target[0] == 'Screen':
    screenId = int(target[1])
    projectId = None


host = os.environ.get('OMERO_HOST', 'localhost')
port = int(os.environ.get('OMERO_PORT', '4064'))


# Keep track of detected problems
problems = {}
if args.output:
    problems_rev = {}


def flag_error(container, image, reason):
    """ Logs the error and keeps track of reason
    container: str
        Name of the container (Dataset or Plate)
    image: str
        Name of the image or well position
    reason: str
        The nature of the problem
    """
    problems.setdefault(reason, []).append((container, image))
    if args.output:
        key = "{},{}".format(container, image)
        problems_rev[key] = reason


def report_problems():
    from operator import itemgetter
    logging.error("Problem(s) detected:")
    for reason in problems:
        logging.error(reason)
        elements = sorted(problems[reason], key=itemgetter(0, 1))
        for element in elements:
            logging.info("{},{}".format(element[0], element[1]))


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

if args.file:
    df = pandas.read_csv(args.file)
    if projectId:
        for index, row in df.iterrows():
            key = "{},{}".format(row["Dataset Name"],
                                 row["Image Name"])
            if key in csv_data:
                flag_error(row["Dataset Name"], row["Image Name"],
                           "Duplicate entry in csv file")
            csv_data.add(key)
    elif screenId:
        for index, row in df.iterrows():
            key = "{},{}".format(row["Plate"], row["Well"])
            if key in csv_data:
                flag_error(row["Plate"], row["Well"],
                           "Duplicate entry in csv file")
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
        logging.critical("There's no Project with this id.")
        sys.exit(1)
    for ds in project.listChildren():
        for img in ds.listChildren():
            key = "{},{}".format(ds.getName(), img.getName())
            if csv_data:
                if key not in csv_data:
                    flag_error(ds.getName(), img.getName(),
                               "Missing row in CSV")
                else:
                    csv_data.remove(key)
            else:
                if not check_annotations(img.listAnnotations()):
                    flag_error(ds.getName(), img.getName(),
                               "Missing Annotation")
            if key in images:
                flag_error(ds.getName(), img.getName(),
                           "Non-unique Dataset/Image")
            else:
                images.add(key)
elif screenId:
    screen = conn.getObject("Screen", screenId)
    if not screen:
        logging.critical("There's no Screen with this id.")
        sys.exit(1)
    for pl in screen.listChildren():
        for well in pl.listChildren():
            if well.getWellSample():
                key = "{},{}".format(pl.getName(), well.getWellPos())
                if csv_data:
                    if key not in csv_data:
                        flag_error(pl.getName(), well.getWellPos(),
                                   "Missing row in CSV")
                    else:
                        csv_data.remove(key)
                else:
                    if not check_annotations(well.listAnnotations()):
                        flag_error(pl.getName(), well.getWellPos(),
                                   "Missing Annotation")
                if key in images:
                    flag_error(pl.getName(), well.getWellPos(),
                               "Non-unique Plate/Well")
                else:
                    images.add(key)

conn.close()

if csv_data:
    logging.warning("There are additional entries in the csv file which don't"
                    " match any images:")
    for key in csv_data:
        logging.info("{},No image for this entry".format(key))

if args.output and args.file:
    df = pandas.read_csv(args.file)
    if projectId:
        for index, row in df.iterrows():
            key = "{},{}".format(row["Dataset Name"], row["Image Name"])
            if key in problems_rev:
                df.loc[index, 'Problem'] = problems_rev.pop(key)
            elif key in csv_data:
                df.loc[index, 'Problem'] = "No image"
        if problems_rev:
            for key in problems_rev:
                a = key.split(",")[0]
                b = key.split(",")[1]
                df = df.append({'Dataset Name': a, 'Image Name': b,
                                'Problem': "No data"}, ignore_index=True)
    if screenId:
        for index, row in df.iterrows():
            key = "{},{}".format(row["Plate"], row["Well"])
            if key in problems_rev:
                df.loc[index, 'Problem'] = problems_rev.pop(key)
            elif key in csv_data:
                df.loc[index, 'Problem'] = "No image"
        if problems_rev:
            for key in problems_rev:
                a = key.split(",")[0]
                b = key.split(",")[1]
                df = df.append({'Plate': a, 'Well': b, 'Problem': "No data"},
                               ignore_index=True)
    df.to_csv(args.output, index=False)

if not problems:
    print("All images are unique and have annotations.")
    sys.exit(0)
else:
    report_problems()
    sys.exit(1)
