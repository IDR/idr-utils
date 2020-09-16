#! /usr/bin/env python

import argparse
import logging
import omero.cli
import omero.gateway
import omero.model
import re
import sys

log = logging.getLogger()

COMPOUND_NAME_KEY = "Compound Name"
COMPOUND_URL_KEY = 'Compound Name URL'
PUBCHEM_URL = 'pubchem.ncbi.nlm.nih.gov'
CID_PATTERN = re.compile(
    fr'^https://{PUBCHEM_URL}/compound/(?P<cid>\d+)$')
NAME_PATTERN = re.compile(
    r'^https://www.ncbi.nlm.nih.gov/pccompound\?term=.*$')


def find_pubchem_compounds(conn):

    query = ("select distinct m from MapAnnotation m "
             "join m.mapValue mv "
             "where m.ns='openmicroscopy.org/mapr/compound'")
    all_compounds = conn.getQueryService().findAllByQuery(
        query, None, conn.SERVICE_OPTS)
    ncompounds = len(all_compounds)
    query += f" and mv.value like '%{PUBCHEM_URL}%'"
    pubchem_compounds = conn.getQueryService().findAllByQuery(
        query, None, conn.SERVICE_OPTS)
    npubchem_compounds = len(pubchem_compounds)
    log.info(f"Found {npubchem_compounds} compounds with PubChem identifiers"
             f" (out of {ncompounds})")
    return pubchem_compounds


def chunks(elements, batch):
    for i in range(0, len(elements), batch):
        yield elements[i:i+batch]


def update_compound_urls(compounds):
    updated_compounds = []
    for compound in compounds:
        old_pairs = [(kv.name, kv.value) for kv in compound.getMapValue()]
        new_pairs = []
        cid_url = None
        name_url = None
        name = ""
        for (key, value) in old_pairs:
            if key == COMPOUND_NAME_KEY:
                new_pairs.append((key, value))
                name = value
                continue

            if key != COMPOUND_URL_KEY:
                log.error("Unrecognized key: {key}")
                continue

            if CID_PATTERN.match(value):
                if cid_url is not None:
                    log.error(
                        f"Mismatching URLs for {name}: {value} vs {cid_url}")
                    continue
                else:
                    cid_url = value
            elif NAME_PATTERN.match(value):
                if name_url is not None:
                    log.error(f"Mismatching URLs: {value}, {name_url}")
                    continue
                else:
                    name_url = value
            else:
                log.error(f'Unrecognized URL for {name}: {value}')

        if cid_url is not None:
            new_pairs.append((COMPOUND_URL_KEY, cid_url))
        elif name_url is not None:
            new_pairs.append((COMPOUND_URL_KEY, name_url))

        if new_pairs != old_pairs:
            mapValue = [omero.model.NamedValue(x[0], x[1]) for x in new_pairs]
            compound.setMapValue(mapValue)
            updated_compounds.append(compound)

    log.info("Updating annotations for %s compounds" % len(updated_compounds))
    return updated_compounds


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
        help='Number of compounds to update in batch')
    parser.add_argument('--dry-run', '-n', action='store_true')
    args = parser.parse_args(argv)

    logging.basicConfig(
            level=logging.INFO - 10 * args.verbose + 10 * args.quiet)
    with omero.cli.cli_login() as c:
        conn = omero.gateway.BlitzGateway(client_obj=c.get_client())
        compounds = find_pubchem_compounds(conn)
        updated_compounds = update_compound_urls(compounds)
        if not args.dry_run:
            for compounds in chunks(updated_compounds, args.batch):
                log.info("Updating batch of %s compounds" % len(compounds))
                conn.getUpdateService().saveArray(compounds)


if __name__ == "__main__":
    main(sys.argv[1:])
