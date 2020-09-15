#! /usr/bin/env python

import argparse
import logging
import omero.cli
import omero.gateway
import omero.model
import re
import sys

log = logging.getLogger()

GENE_URL_KEY = 'Gene Identifier URL'
YEASTGENOME_URL = 'www.yeastgenome.org'
PATTERN = re.compile(
    f'^https?://{YEASTGENOME_URL}/locus/(?P<gene>\w+)(?:/overview)?$')


def find_yeast_genes(conn):
    query = ("select distinct m from MapAnnotation m "
             "join m.mapValue mv "
             "where m.ns='openmicroscopy.org/mapr/gene'"
             f" and mv.value like '%{YEASTGENOME_URL}%'")
    genes = conn.getQueryService().findAllByQuery(
        query, None, conn.SERVICE_OPTS)
    log.info("Found %s yeast genes" % len(genes))
    return genes


def chunks(l, n):
    for i in range(0, len(l), n):
        yield l[i:i+n]


def update_yeastgenome_urls(genes):
    updated_genes = []
    for gene in genes:
        old_pairs = [(kv.name, kv.value) for kv in gene.getMapValue()]
        new_pairs = []
        found_gene_url_key = False
        for (key, value) in old_pairs:
            if key != GENE_URL_KEY:
                new_pairs.append((key, value))
                continue

            if found_gene_url_key:
                log.info("Removing duplicate Gene URL key")
                continue
            else:
                found_gene_url_key = True

            r = PATTERN.match(value)
            if not r:
                log.error(f"Invalid yeast genome URL: {value}")
            else:
                gene_name = r.group('gene')
                new_pairs.append(
                    (key, f"https://{YEASTGENOME_URL}/locus/{gene_name}"))

        if new_pairs != old_pairs:
            mapValue = [omero.model.NamedValue(x[0], x[1]) for x in new_pairs]
            gene.setMapValue(mapValue)
            updated_genes.append(gene)

    log.info("Updating annotations for %s genes" % len(updated_genes))
    return updated_genes


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
        help='Number of genes to update in batch')
    parser.add_argument('--dry-run', '-n', action='store_true')
    args = parser.parse_args(argv)

    logging.basicConfig(
            level=logging.INFO - 10 * args.verbose + 10 * args.quiet)
    with omero.cli.cli_login() as c:
        conn = omero.gateway.BlitzGateway(client_obj=c.get_client())
        yeast_genes = find_yeast_genes(conn)
        updated_genes = update_yeastgenome_urls(yeast_genes)
        if not args.dry_run:
            for genes in chunks(updated_genes, args.batch):
                log.info("Updating batch of %s genes" % len(genes))
                conn.getUpdateService().saveArray(genes)


if __name__ == "__main__":
    main(sys.argv[1:])
