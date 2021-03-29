#! /usr/bin/env python

import argparse
import logging
import omero.cli
import omero.gateway
import sys

log = logging.getLogger()

IMAGE_MAPS = {
    "Organism": "openmicroscopy.org/mapr/organism",
    "Antibody": "openmicroscopy.org/mapr/antibody",
    "Gene": "openmicroscopy.org/mapr/gene",
    "Cell Line": "openmicroscopy.org/mapr/cell_line",
    "Phenotype": "openmicroscopy.org/mapr/phenotype",
    "siRNA": "openmicroscopy.org/mapr/sirna",
    "Compound": "openmicroscopy.org/mapr/compound",
    "Protein": "openmicroscopy.org/mapr/protein"
    }


def find_orphaned_maps(conn, map_namespace, object_types):
    query = (
        "select m from MapAnnotation m "
        f"where m.ns='{map_namespace}'")
    for t in object_types:
        query += (
            " and not exists ("
            f"select 1 FROM {t}AnnotationLink AS l WHERE l.child.id = m.id)"
        )
    maps = conn.getQueryService().findAllByQuery(
        query, None, conn.SERVICE_OPTS)
    return [m.id.val for m in maps]


def delete_maps(conn, ids, batch=500, dryRun=True, wait=True):
    for subids in chunks(ids, batch):
        log.info(f"Deleting {len(subids)} maps")
        conn.deleteObjects(
            'MapAnnotation', subids, dryRun=dryRun, wait=wait)


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
        for map_type, map_namespace in IMAGE_MAPS.items():
            map_ids = find_orphaned_maps(
                conn, map_namespace, ["Image", "Well"])
            log.info(f"Found {len(map_ids)} orphaned {map_type} maps")
            delete_maps(conn, map_ids, batch=args.batch, dryRun=args.dry_run)


if __name__ == "__main__":
    main(sys.argv[1:])
