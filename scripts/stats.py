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
from omero.cli import CLI
from omero.cli import Parser
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


def stat_top_level(query, study_list, printfmt='string'):
    # printfmt can be any of the pandas.Dataframe.to_{printfmt} methods

    df = pd.DataFrame(columns=(
        "Study",
        "Container",
        "Introduced",
        "ID",  # "Internal ID"
        "Set",
        "Wells",
        "Experiments",
        #    (wells for screens, imaging experiments for non-screens)",
        "Targets",
        #    (genes, small molecules, geographic locations, or combination of
        #    factors (idr0019, 26, 34, 38)",
        "Acquisitions",
        "Images",  # "5D Images"
        "Planes",
        "Size (TB)",
        "Bytes",  # "Size"
        "# of Files",
        "avg. size (MB)",
        "Avg. Image Dim (XYZCT)",
    ))

    # Placeholders:
    introduced = ""
    experiments = None
    targets = None
    acquisitions = None
    files = None
    avg_size = None

    for study, containers in sorted(studies(study_list).items()):
        for container, set_expected in sorted(containers.items()):
            logging.info("Retrieving stats for %s" % container)
            params = ParametersI()
            params.addString("container", container)
            if "Plate" in set_expected:
                expected = set_expected["Plate"]
                rv = unwrap(query.projection(SPW_QUERY, params))
            elif "Dataset" in set_expected:
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
                    files,
                    avg_size,
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
                        print(
                            f"Warning: {container}: got {plates} plates "
                            f"expected {nexpected}")
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
                        bytes / 2 ** 40,
                        bytes,
                        files,
                        avg_size,
                        avg_image_dim,
                    )

    totals = df.iloc[:, -12:-2].sum()
    df.loc[len(df)] = ["Total", "", "", ""] + totals.to_list() + ["", ""]

    with pd.option_context(
            'display.max_rows', None, 'display.max_columns', None):
        print(getattr(df, f'to_{printfmt}')(index=False))


def main():
    parser = Parser()
    parser.add_login_arguments()
    parser.add_argument("--orphans", action="store_true")
    parser.add_argument("--unknown", action="store_true")
    parser.add_argument("--search", action="store_true")
    parser.add_argument("--images", action="store_true")
    parser.add_argument("--format", default="string", help=(
        "Output format, this can be any format support by the "
        "pandas.DataFrame.to_* format such as 'csv'"))
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
            stat_top_level(query, ns.studies, ns.format)
    finally:
        cli.close()


if __name__ == "__main__":
    main()
