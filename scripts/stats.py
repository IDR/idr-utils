#!/usr/bin/env python

from builtins import str
from builtins import map
from collections import defaultdict
from fileinput import input
from fileinput import hook_compressed
from glob import glob
from os.path import basename
from os.path import dirname
from os.path import exists
from os.path import join
import pandas as pd
from sys import stderr
import logging


from omero import all  # noqa
from omero import ApiUsageException
from omero.callbacks import CmdCallbackI
from omero.cli import CLI
from omero.cli import Parser
from omero.cmd import DiskUsage2
from omero.rtypes import unwrap
from omero.sys import ParametersI

from yaml import safe_load

PDI_QUERY = """
    SELECT
        p.id,
        COUNT(DISTINCT d.id),
        0,
        COUNT(DISTINCT i.id),
        SUM(CAST(pix.sizeZ AS long) * pix.sizeT * pix.sizeC),
        SUM(CAST(pix.sizeZ AS long) * pix.sizeT * pix.sizeC *
            pix.sizeX * pix.sizeY * 2),
        CONCAT(
            CAST(ROUND(AVG(pix.sizeX)) AS int),
            ' x ',
            CAST(ROUND(AVG(pix.sizeY)) AS int),
            ' x ',
            CAST(ROUND(AVG(pix.sizeZ)) AS int),
            ' x ',
            CAST(ROUND(AVG(pix.sizeC)) AS int),
            ' x ',
            CAST(ROUND(AVG(pix.sizeT)) AS int)
        )
    FROM Project p
    LEFT OUTER JOIN p.datasetLinks pdl
    LEFT OUTER JOIN pdl.child d
    LEFT OUTER JOIN d.imageLinks dil
    LEFT OUTER JOIN dil.child i
    LEFT OUTER JOIN i.pixels pix
    WHERE p.name = :container
    GROUP BY p.id
"""

SPW_QUERY = """
    SELECT
        s.id,
        COUNT(DISTINCT p.id),
        COUNT(DISTINCT w.id),
        COUNT(DISTINCT i.id),
        SUM(CAST(pix.sizeZ AS long) * pix.sizeT * pix.sizeC),
        SUM(CAST(pix.sizeZ AS long) * pix.sizeT * pix.sizeC *
            pix.sizeX * pix.sizeY * 2),
        CONCAT(
            CAST(ROUND(AVG(pix.sizeX)) AS int),
            ' x ',
            CAST(ROUND(AVG(pix.sizeY)) AS int),
            ' x ',
            CAST(ROUND(AVG(pix.sizeZ)) AS int),
            ' x ',
            CAST(ROUND(AVG(pix.sizeC)) AS int),
            ' x ',
            CAST(ROUND(AVG(pix.sizeT)) AS int)
        )
    FROM Screen s
    LEFT OUTER JOIN s.plateLinks spl
    LEFT OUTER JOIN spl.child p
    LEFT OUTER JOIN p.wells w
    LEFT OUTER JOIN w.wellSamples ws
    LEFT OUTER JOIN ws.image i
    LEFT OUTER JOIN i.pixels pix
    WHERE s.name = :container
    GROUP BY s.id
"""


def studies(study_list):
    with open("bulk.yml") as f:
        default_columns = safe_load(f).get("columns", {})

    rv = defaultdict(lambda: defaultdict(lambda: defaultdict(list)))
    if not study_list:
        study_list = sorted(glob("idr*"))
    for study in study_list:
        if study[-1] == "/":
            study = study[0:-1]
        if "idr0000-" in study or "idr-utils" in study:
            continue

        logging.info("Finding containers for study %s" % study)
        target = "Plate"
        containers = glob(join(study, "screen[A-Z]"))
        if containers:
            assert not glob(join(study, "experiment*")), study
        else:
            target = "Dataset"
            containers = glob(join(study, "experiment[A-Z]"))

        assert len(containers) >= 1
        for container in sorted(containers):
            bulks = glob(join(container, "*-bulk.yml"))
            bulks += glob(join(container, "**/*-bulk.yml"))
            for bulk in bulks:
                pdir = dirname(bulk)
                with open(bulk, "r") as f:
                    y = safe_load(f)
                p = join(pdir, y["path"])
                columns = y.get("columns", default_columns)
                name_idx = None
                path_idx = None
                target_idx = None
                for idx, col in enumerate(columns):
                    if col == "name":
                        name_idx = idx
                    elif col == "target":
                        target_idx = idx
                    elif col == "path":
                        path_idx = idx

                if not exists(p) and exists("%s.gz" % p):
                    p = "%s.gz" % p
                with input(files=[p], openhook=hook_compressed) as f:
                    for line in f:
                        if isinstance(line, bytes):  # compressed files
                            line = line.decode('utf-8')
                        parts = line.strip().split("\t")
                        if name_idx:
                            name = parts[name_idx]
                        else:
                            if path_idx < len(parts):
                                name = basename(parts[path_idx])
                            else:
                                raise Exception(path_idx, container, bulk)
                        if target_idx:
                            target = parts[target_idx]
                        rv[study][container][target].append(name)

    for study, containers in sorted(rv.items()):
        for container, types in sorted(containers.items()):
            assert len(types) == 1, (study, container, types)

    return rv


def orphans(query):
    orphans = unwrap(query.projection((
        "select distinct f.id from Image i "
        "join i.fileset as f "
        "left outer join i.wellSamples as ws "
        "where ws = null "
        "order by f.id"), None))
    for orphan in orphans:
        print("Fileset:%s" % (orphan[0]))
    print("Total:", len(orphans), file=stderr)


def unknown(query, study_list):
    on_disk = []
    for study, screens in sorted(studies(study_list).items()):
        for screen, plates in list(screens.items()):
            on_disk.append(screen)
            on_disk.extend(plates)

    on_server = unwrap(query.projection((
        "select s.name, s.id from Screen s"), None))
    for name, id in on_server:
        if name not in on_disk:
            print("Screen:%s" % id, name)

    on_server = unwrap(query.projection((
        "select s.name, p.name, p.id from Plate p "
        "join p.screenLinks as sl join sl.parent as s"), None))
    for screen, name, id in on_server:
        if name not in on_disk:
            print("Plate:%s" % id, name, screen)


def check_search(query, search):
    obj_types = ('Screen', 'Plate', 'Image')
    print("loading all map annotations")
    res = query.findAllByQuery("from MapAnnotation m", None)
    all_values = set(
        v for m in res for k, v in m.getMapValueAsMap().items()
    )
    print("searching for all unique values [%d]" % len(all_values))
    with open("no_matches.txt", "w") as fo:
        for v in all_values:
            try:
                matches = []
                for t in obj_types:
                    search.onlyType(t)
                    search.byFullText(v)
                    hit = search.hasNext()
                    matches.append(0 if not hit else len(search.results()))
                fo.write("%s\n" % '\t'.join(map(str, matches)))
            except ApiUsageException as e:
                stderr.write("%s: %s\n" % (v, e))
                continue


def fs_usage(client, objecttype, objectid):
    req = DiskUsage2()
    req.targetObjects = {objecttype: [objectid]}
    req.targetClasses = [objecttype]

    cb = None
    handle = None
    try:
        handle = client.sf.submit(req)
        cb = CmdCallbackI(client, handle)
        # Wait for finish
        while True:
            found = cb.block(1000)
            if found:
                break

        rsp = cb.getResponse()
        # status = cb.getStatus()
    except KeyboardInterrupt:
        # If user uses Ctrl-C, then cancel
        if handle is not None:
            logging.warning("Attempting cancel...")
            if handle.cancel():
                logging.warning("Cancelled")
            else:
                logging.warning("Failed to cancel")
    finally:
        if cb is not None:
            cb.close(True)  # Close handle

    sizebytes = sum(rsp.totalBytesUsed.values())
    nfiles = sum(rsp.totalFileCount.values())
    return sizebytes, nfiles


def stat_top_level(client, study_list, *, fsusage, append_totals):
    # Calculate stats for the studies.tsv file.
    # client: OMERO client
    # study_list: List of studies
    # fsusage: If True use the OMERO DiskUsage2 command to get information
    #   on disk usage, otherwise make a rough guess and ignore other fields
    # append_totals: If True append an additional row containing totals
    # Returns a pandas Dataframe that can be used for further analysis
    query = client.sf.getQueryService()

    df = pd.DataFrame(columns=(
        "Study",
        "Container",
        "Introduced",
        "ID",  # "Internal ID"
        "Set",
        "Wells",
        "Experiments",
        #    (wells for screens, imaging experiments for non-screens)",
        #    TODO: remove
        "Targets",
        #    (genes, small molecules, geographic locations, or combination of
        #    factors (idr0019, 26, 34, 38)",
        #    TODO: remove
        "Acquisitions",
        "Images",  # "5D Images"
        "Planes",
        "Size (TB)",  # TODO: from fs usage
        "Bytes",  # "Size"  # TODO: from fs usage
        "# of Files",  # TODO: from fs usage
        "avg. size (MB)",  # TODO: from fs usage
        "Avg. Image Dim (XYZCT)",
    ))

    # Placeholders:
    introduced = ""
    experiments = None
    targets = None
    acquisitions = None

    for study, containers in sorted(studies(study_list).items()):
        for container, set_expected in sorted(containers.items()):
            logging.info("Retrieving stats for %s" % container)
            params = ParametersI()
            params.addString("container", container)
            if "Plate" in set_expected:
                parenttype = "Screen"
                expected = set_expected["Plate"]
                rv = unwrap(query.projection(SPW_QUERY, params))
            elif "Dataset" in set_expected:
                parenttype = "Project"
                expected = set_expected["Dataset"]
                rv = unwrap(query.projection(PDI_QUERY, params))
            else:
                raise Exception("unknown: %s" % list(set_expected.keys()))
            nexpected = len(expected)

            container1, container2 = container.split('/', 1)
            if not rv:
                df.loc[len(df)] = (
                    container1,
                    container2,
                    introduced,
                    "MISSING",
                    0,
                    0,
                    experiments,
                    targets,
                    acquisitions,
                    0,
                    0,
                    0,
                    0,
                    None,
                    None,
                    "",
                )
            else:
                for x in rv:
                    (plate_id, plates, wells, images, planes, bytes,
                        avg_image_dim) = x
                    if not planes:
                        planes = 0
                    if not bytes:
                        bytes = 0
                    if plates != nexpected:
                        logging.warning(
                            '%s: got %d plates expected %d',
                            container, plates, nexpected)
                    if fsusage:
                        fs_size, fs_num = fs_usage(
                            client, parenttype, plate_id)
                    else:
                        fs_size = bytes
                        fs_num = None
                    if fs_num:
                        fs_avg_size = fs_size / fs_num
                    else:
                        fs_avg_size = None
                    df.loc[len(df)] = (
                        container1,
                        container2,
                        introduced,
                        plate_id,
                        nexpected,
                        wells,
                        experiments,
                        targets,
                        acquisitions,
                        images,
                        planes,
                        fs_size / 2 ** 40,
                        fs_size,
                        fs_num,
                        fs_avg_size,
                        avg_image_dim,
                    )

    if append_totals:
        totals = df.iloc[:, -12:-2].sum()
        df.loc[len(df)] = ["Total", "", "", ""] + totals.to_list() + ["", ""]

    return df


def print_stats(df, fmt):
    # fmt can be any of the pandas.Dataframe.to_{printfmt} methods
    if fmt == 'tsv':
        out = df.to_csv(sep='\t', header=False, index=False)
    elif fmt in ('json',):
        out = getattr(df, f'to_{fmt}')()
    else:
        out = getattr(df, f'to_{fmt}')(index=False)
    print(out)


def main():
    parser = Parser()
    parser.add_login_arguments()
    parser.add_argument("--orphans", action="store_true")
    parser.add_argument("--unknown", action="store_true")
    parser.add_argument("--search", action="store_true")
    parser.add_argument("--images", action="store_true")
    parser.add_argument("--disable-fsusage", action="store_true", help=(
        "Disable fs usage file size and counts. "
        "Use this flag if the script is taking too long."))
    parser.add_argument("--format", default="tsv", help=(
        "Output format, includes 'string', 'csv', 'tsv' (default), and "
        "others. "
        "'tsv' can be appended to the IDR studies.csv file with no further "
        "processing. "
        "All other formats include headers and totals. "
        "'string' is the most human readable (fixed width columns). "
    ))
    parser.add_argument(
        "studies", nargs='*',
        help="Studies to be processed, default all (idr*)")
    parser.add_argument('-v', '--verbose', action='count', default=0)
    ns = parser.parse_args()

    levels = [logging.WARNING, logging.INFO, logging.DEBUG]
    level = levels[min(len(levels)-1, ns.verbose)]
    logging.basicConfig(
        level=level, format="%(asctime)s %(levelname)s %(message)s")

    cli = CLI()
    cli.loadplugins()
    client = cli.conn(ns)
    try:
        query = client.sf.getQueryService()
        if ns.orphans:
            orphans(query)
        elif ns.unknown:
            unknown(query, ns.studies)
        elif ns.search:
            search = client.sf.createSearchService()
            check_search(query, search)
        else:
            df = stat_top_level(
                client, ns.studies,
                fsusage=(not ns.disable_fsusage),
                append_totals=(ns.format != 'tsv'))
            print_stats(df, ns.format)
    finally:
        cli.close()


if __name__ == "__main__":
    main()
