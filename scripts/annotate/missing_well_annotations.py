from __future__ import print_function
from omero.gateway import BlitzGateway
import pandas
import sys
import os


def printusage():
    print ('''
Checks for Wells which have been imported but don't have any annotations.
Will skip Plates which are not mentioned in the annotation.csv.

Prints the Plate name, Well row index and Well column index of these wells
to stdout. Progress information is printed to stderr.

Usage: python missing_well_annotations.py [path to annotation.csv] \
[Screen ID] >> no_annotations.csv

Environment variables OMERO_USER, OMERO_PASSWORD, OMERO_HOST and OMERO_PORT
are not necessary but are taken into account if set.
          ''')
    sys.exit(1)


if len(sys.argv) < 3:
    printusage()
else:
    annoFile = sys.argv[1]
    screenId = sys.argv[2]

host = os.environ.get('OMERO_HOST', 'localhost')
port = int(os.environ.get('OMERO_PORT', '4064'))

plates = set()
df = pandas.read_csv(annoFile)
for index, row in df.iterrows():
    plates.add(str(row["Plate"]).strip())

conn = BlitzGateway(os.environ.get('OMERO_USER', 'public'),
                    os.environ.get('OMERO_PASSWORD', 'public'),
                    host=host, port=port)
conn.connect()

print("Plate,Well_Row,Well_Column")
screen = conn.getObject("Screen", screenId)
total = len(plates)
count = 0
for pl in screen.listChildren():
    if pl.name.strip() in plates:
        print("Checking plate %d / %d" % (count, total), file=sys.stderr)
        count = count + 1
        for well in pl.listChildren():
            if len(list(well.listAnnotations())) == 0:
                print("%s,%s,%s" % (pl.name, well.row, well.column))
