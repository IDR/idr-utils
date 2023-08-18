
import csv
import sys
import os
from omero.cli import cli_login
from omero.gateway import BlitzGateway

# study - and path to s3 bucket that contains each plate.zarr or image.zarr
study_names = [
    ("idr0004-thorpe-rad52/screenA", "idr0004"),
    ("idr0010-doil-dnadamage/screenA", "idr0010"),
    ("idr0011-ledesmafernandez-dad4/screenA", "idr0011"),
    ("idr0011-ledesmafernandez-dad4/screenB", "idr0011"),
    ("idr0011-ledesmafernandez-dad4/screenC", "idr0011"),
    ("idr0011-ledesmafernandez-dad4/screenD", "idr0011"),
    ("idr0011-ledesmafernandez-dad4/screenE", "idr0011"),
    ("idr0012-fuchs-cellmorph/screenA", "idr0012"),
    ("idr0013-neumann-mitocheck/screenA", "idr0013"),
    ("idr0013-neumann-mitocheck/screenB", "idr0013"),
    ("idr0015-colin-taraoceans/screenA", "idr0015"),
    ("idr0016-wawer-bioactivecompoundprofiling/screenA", "idr0016"),
    ("idr0025-stadler-proteinatlas/screenA", "idr0025"),
    ("idr0026-weigelin-immunotherapy/experimentA", "idr0026"),
    ("idr0033-rohban-pathways/screenA", "idr0033"),
    ("idr0035-caie-drugresponse/screenA", "idr0035"),
    ("idr0036-gustafsdottir-cellpainting/screenA", "idr0036"),
    ("idr0051-fulton-tailbudlightsheet/experimentA", "idr0051"),
    ("idr0054-segura-tonsilhyperion/experimentA", "idr0054"),
    ("idr0064-goglia-erkdynamics/screenA", "idr0064"),
    ("idr0090-ashdown-malaria/screenA", "idr0090"),
    ("idr0091-julou-lacinduction/experimentA", "idr0091"),   # .pattern files ONLY
]


def get_zarr_name(obj):
    # for plate or image, zarr will be named the same...
    name = obj.name
    if name.endswith(".pattern"):
        # remove .pattern from image names
        name = name[:-8]
    return name + ".ome.zarr"


def lookup_filesets(conn, name):

    filesets = []
    if "screen" in name:
        screen = conn.getObject("Screen", attributes={'name': name})
        for plate in screen.listChildren():
            image = None
            for well in plate.listChildren():
                ws = list(well.listChildren())
                if len(ws) > 0:
                    image = list(well.listChildren())[0].getImage()
                    if image is not None:
                        break
            # don't .getFileset() as it loads all Files and Images
            filesets.append((image.fileset.id.val, get_zarr_name(plate)))
    else:
        project = conn.getObject("Project", attributes={'name': name})
        for dataset in project.listChildren():
            for image in dataset.listChildren():
                if image.name.endswith(".tif"):
                    pass
                    # print("Ignoring image", image.id, image.name)
                else:
                    print(image.id)
                    if " " in image.name:
                        print(image.name)
                    filesets.append((image.fileset.id.val, get_zarr_name(image)))
    return filesets


def main(argv):
    """
    We go through all Filesets under the list of studies above and
    make a CSV file of "Fileset ID, ZarrName, ZarrPath"
    """

    with cli_login() as cli:
        conn = BlitzGateway(client_obj=cli._client)
    
        for (name, dir_name) in study_names:
            filesets = lookup_filesets(conn, name)
            # print("\n", name, filesets)
            with open('idr_filesets.csv', 'a', newline='') as csvfile:
                fswriter = csv.writer(csvfile)

                for (fsid, zarr_name) in filesets:
                    zarr_path = os.path.join(dir_name, zarr_name)
                    fswriter.writerow([fsid, zarr_name, zarr_path])

if __name__ == '__main__':
    main(sys.argv[1:])
