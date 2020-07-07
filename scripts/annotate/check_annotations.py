from omero.gateway import BlitzGateway
import pandas
import sys
import os

def printusage():
    print('''
Checks an annotation.csv file against an IDR dataset to make sure each image/well has
an annotation.

Prints the images/wells which don't have any annotations to stdout.

Usage: 
python check_annotations.py [path to annotation.csv] Project:[Project ID] >> no_annotations.csv
or
python check_annotations.py [path to annotation.csv] Screen:[Screen ID] >> no_annotations.csv

Environment variables OMERO_USER, OMERO_PASSWORD, OMERO_HOST and OMERO_PORT
are not necessary but are taken into account if set.
          ''')
    sys.exit(1)


if len(sys.argv) < 3:
    printusage()
else:
    annoFile = sys.argv[1]
    target = sys.argv[2].split(':')
    if target[0] == 'Project':
        projectId = int(target[1])
        screenId = None
    elif target[0] == 'Screen':
        screenId = int(target[1])
        projectId = None


host = os.environ.get('OMERO_HOST', 'localhost')
port = int(os.environ.get('OMERO_PORT', '4064'))


csv_data = set()
df = pandas.read_csv(annoFile)
if projectId:
    for index, row in df.iterrows():
        csv_data.add("{}-{}".format(row["Dataset Name"],row["Image Name"]))
elif screenId:
    for index, row in df.iterrows():
        csv_data.add("{}-{}".format(row["Plate"],row["Well"]))


conn = BlitzGateway(os.environ.get('OMERO_USER', 'public'),
                    os.environ.get('OMERO_PASSWORD', 'public'),
                    host=host, port=port)
conn.connect()


if projectId:
    print("Dataset,Image,ID")
    project = conn.getObject("Project", projectId)
    for ds in project.listChildren():
        for img in ds.listChildren():
            key = "{}-{}".format(ds.getName(), img.getName())
            if not key in csv_data:
                print("%s,%s,%d" % (ds.getName(), img.getName(), img.getId()))
elif screenId:
    print("Plate,Well_Row,Well_Column")
    screen = conn.getObject("Screen", screenId)
    for pl in screen.listChildren():
        for well in pl.listChildren():
            key = "{}-{}{}".format(pl.getName(), well.row, well.column)
            if not key in csv_data:
                print("%s,%s,%s" % (pl.getName(), well.row, well.column))

