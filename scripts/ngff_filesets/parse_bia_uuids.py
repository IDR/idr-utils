
import csv

import argparse
import sys

# Usage:
# cd idr-utils/scripts/ngff_filesets
# python parse_bia_uuids.py idr0051


def main(argv):
    parser = argparse.ArgumentParser()
    parser.add_argument('idr_id', help='E.g. idr0051')
    args = parser.parse_args(argv)

    fsids_by_fsname = {}
            
    with open('idr_filesets.csv', 'r', newline='') as csvfile:
        csvreader = csv.reader(csvfile)

        for row in csvreader:
            fsid = row[0]
            # idr0051/180712_H2B_22ss_Courtney_p00_c00_reg_preview.klb.ome.zarr.zip
            fileset_name = row[2]
            fsids_by_fsname[fileset_name] = int(fsid)
    

    bia_by_fsid = []
    # We look for a file named e.g `idr0051.csv`
    with open(f"{args.idr_id}.csv", 'r', newline='') as csvfile:
        csvreader = csv.reader(csvfile)
        for row in csvreader:
            # idr0051/180712_H2B_22ss_Courtney_p00_c00_reg_preview.klb.ome.zarr.zip
            fileset_name = row[0]
            bia_id = row[1]

            # special handling for idr0013. e.g. idr0013/LT0021_51--ex2006_08_30--sp2006_08_21--tt20--c5.ome.zarr
            # needs to be shortened to idr0013/LT0021_51--ex2006_08_30 (name in IDR)
            if fileset_name.startswith("idr0013"):
                fileset_name = fileset_name.split("--")[0] + ".ome.zarr"

            if fileset_name in fsids_by_fsname:
                fsid = fsids_by_fsname[fileset_name]
                bia_by_fsid.append([fileset_name, bia_id, fsid])
            else:
                print("NOT FOUND", fileset_name)
                # keep row unchanged
                bia_by_fsid.append([fileset_name, bia_id])

    # print(bia_by_fsid)
    print("%s filesets matched" % len(bia_by_fsid))

    with open(f"{args.idr_id}.csv", 'w', newline='') as csvfile:
        csvwriter = csv.writer(csvfile)
        csvwriter.writerows(bia_by_fsid)

if __name__ == '__main__':
    main(sys.argv[1:])
