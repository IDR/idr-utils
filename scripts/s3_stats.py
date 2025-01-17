import argparse
import omero.cli
from omero.gateway import BlitzGateway

DESC = """Summarize S3 file stats for a particular screen.
Needs the name of the screen, e.g. 'idr0011-ledesmafernandez-dad4/screenB'
and a file listing created with aws-cli e.g.
'aws --endpoint-url https://uk1s3.embassy.ebi.ac.uk s3 ls --summarize --recursive --no-sign-request bia-integrator-data/S-BIAD866 >> idr0011_du.txt'
"""

parser = argparse.ArgumentParser(description=DESC)
parser.add_argument("screen", help="Screen name")
parser.add_argument("flf", help="The file listing file")
args = parser.parse_args()

def get_uuid_from_idr(conn, fs_id):
    params = omero.sys.ParametersI()
    params.addId(omero.rtypes.rlong(fs_id))
    path = conn.getQueryService().projection("SELECT clientPath FROM FilesetEntry WHERE fileset.id = :id", params)[0][0]._val
    # https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD866/7f95aba3-cfbf-4ae8-a106-edaa36f5b07f/7f95aba3-cfbf-4ae8-a106-edaa36f5b07f.zarr/.zattrs
    return path.split("/")[5]

def get_stats(uuid):
    n_files = 0
    n_bytes = 0
    with open(args.flf, "r") as f:
        for line in f:
            if uuid in line:
                # 2023-08-31 23:25:55     167041 S-BIAD866/2e88d028-00c3-4020-944e-582cc1b7b967/2e88d028-00c3-4020-944e-582cc1b7b967.zarr/A/5/0/1/0/1/18/0/0
                tmp = line.split()
                n_files += 1
                n_bytes += int(tmp[2])
    return n_files, n_bytes


with omero.cli.cli_login() as c:
    conn = omero.gateway.BlitzGateway(client_obj=c.get_client())
    screen = conn.getObject("Screen", attributes={"name": args.screen})
    screen_uuids = {}
    for pl in screen.listChildren():
        for well in pl.listChildren():
            if well.getImage():
                img = well.getImage()
                screen_uuids[get_uuid_from_idr(conn, img.getFileset().getId())] = pl.getName()
                break

    total_zarrs = 0
    total_files = 0
    total_bytes = 0
    print("[Plate (UUID)] [Files] [Bytes]")
    for uuid in screen_uuids.keys():
        n_files, n_bytes = get_stats(uuid)
        print(f"{screen_uuids[uuid]} ({uuid}) {n_files} {n_bytes}")
        total_zarrs += 1
        total_files += n_files
        total_bytes += n_bytes
    print("-------------")
    print(f"{total_zarrs} {total_files} {total_bytes}")