#! /usr/bin/env python

import argparse
import logging
import omero.cli
import omero.gateway
import sys

log = logging.getLogger()

PRIMARY_KEYS = {
    "Organism": "openmicroscopy.org/mapr/organism",
    "Antibody": "openmicroscopy.org/mapr/antibody",
    "Gene": "openmicroscopy.org/mapr/gene",
    "Cell Line": "openmicroscopy.org/mapr/cell_line",
    "Phenotype": "openmicroscopy.org/mapr/phenotype",
    "siRNA": "openmicroscopy.org/mapr/sirna",
    "Compound": "openmicroscopy.org/mapr/compound",
    "Protein": "openmicroscopy.org/mapr/protein"
    }


def find_orphaned_maps(conn, map_namespace):
    query = (
        "select m from MapAnnotation m "
        f"where m.ns='{map_namespace}' and not exists ("
        "select 1 FROM ImageAnnotationLink AS l WHERE l.child.id = m.id)"
        "and not exists ("
        "select 1 FROM WellAnnotationLink AS l WHERE l.child.id = m.id)"
        )
    maps = conn.getQueryService().findAllByQuery(
        query, None, conn.SERVICE_OPTS)
    return [m.id.val for m in maps]


def chunks(elements, batch):
    for i in range(0, len(elements), batch):
        yield elements[i:i+batch]


def main(argv):
    parser = argparse.ArgumentParser()
    parser.add_argument(
        '--verbose', '-v', action='count', default=0,
        help='Increase the command verbosity')
    parser.add_argument(
        '--quiet', '-q', action='count', default=0,
        help='Decrease the command verbosity')
    parser.add_argument(
        '--batch', type=int, default=500,
        help='Number of maps to delete in batch')
    parser.add_argument('--dry-run', '-n', action='store_true')
    args = parser.parse_args(argv)

    logging.basicConfig(
            level=logging.INFO - 10 * args.verbose + 10 * args.quiet)
    with omero.cli.cli_login() as c:
        conn = omero.gateway.BlitzGateway(client_obj=c.get_client())
        for map_type, map_namespace in PRIMARY_KEYS.items():
            ids = find_orphaned_maps(conn, map_namespace)
            log.info(f"Found {len(ids)} orphaned {map_type} maps")
            for subids in chunks(ids, args.batch):
                log.info(f"Deleting {len(subids)} maps")
                conn.deleteObjects(
                    'MapAnnotation', subids, dryRun=args.dry_run, wait=True)


if __name__ == "__main__":
    main(sys.argv[1:])
