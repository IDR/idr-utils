import argparse
import re
import omero.cli


parser = argparse.ArgumentParser(description="Generate SQL script to fix duplicated URL annotations")
parser.add_argument("url", help="Regex of the URL to check for (incl a named group to match the ID!)"
                                ", e.g. \".+ncbi\.nlm\.nih\.gov\/gene\/(?P<ID>.+)\"")
parser.add_argument("namespace", help="The namespace of the annotations, e.g. openmicroscopy.org/mapr/gene")

url_names = {"openmicroscopy.org/mapr/gene": "Gene Identifier URL",
             "openmicroscopy.org/mapr/compound": "Compound Name URL",
             "openmicroscopy.org/mapr/phenotype": "Phenotype Term Accession URL"}

pref_urls = [re.compile(r"^https:\/\/(?!www).+"),\
             re.compile(r"^https:\/\/.+")] # prefer https:// without www over with www


def get_annotations(conn, namespace):
    """
    Get all map annotation with the specific namespace
    :param conn: Reference to the BlitzGateway
    :param namespace: The namespace
    :return: Generator for map annotations
    """
    metadataService = conn.getMetadataService()
    annotations = metadataService.loadSpecifiedAnnotations(
        'omero.model.MapAnnotation', [namespace], None, None)
    for ann in annotations:
        yield ann


def get_urls(ann, pattern):
    """
    Get all URLs from the map annotation matching the given pattern
    :param ann: The map annotation
    :param pattern: The regex pattern
    :return: Dictionary with lists of URLs (key: ID)
    """
    urls = dict()
    for nv in ann._mapValue:
        if nv.name == url_names[ann._ns._val]:
            m = pattern.match(nv.value)
            if m:
                if m.group("ID") not in urls:
                    urls[m.group("ID")] = []
                urls[m.group("ID")].append(nv.value)
    return urls


def check_annotations(conn, args):
    pattern = re.compile(f"{args.url}")
    for ann in get_annotations(conn, args.namespace):
        for id, urls in get_urls(ann, pattern).items():
            if (len(urls) > 1):
                url_to_keep = None
                for url in urls:
                    for pref_url in pref_urls:
                        if pref_url.match(url):
                            url_to_keep = url
                            break
                    if url_to_keep:
                        break
                if url_to_keep:
                    print(f"-- ID: {id} - Annotation ID: {ann._id._val}")
                    print(f"-- URLs: {urls} - keep: {url_to_keep}")
                    for url in urls:
                        if url != url_to_keep:
                            print(f"DELETE FROM annotation_mapvalue mv WHERE mv.annotation_id = {ann._id._val} AND mv.value = '{url}';\n")


args = parser.parse_args()
with omero.cli.cli_login() as c:
    conn = omero.gateway.BlitzGateway(client_obj=c.get_client())
    check_annotations(conn, args)

