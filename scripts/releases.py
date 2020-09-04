import argparse
import logging
import os.path
import pandas as pd


def create_release_stats(studies_file, release=None, date=None, size=None):
    studies = pd.read_csv(studies_file, delimiter='\t', encoding='utf-8')

    df = pd.DataFrame(columns=(
        "Date",
        "Data release",
        "Code version",
        "Sets",
        "Wells",
        "Experiments",
        "Images",
        "Planes",
        "Size (TB)",
        "Files (Million)",
        "DB Size (GB)",
    ))

    if not release:
        release = max(studies['Introduced'])
    index = studies['Introduced'] <= release
    if not date:
        date = "TBD"
    if not size:
        size = "TBD"
    df.loc[0] = (
        date,
        release,
        get_release_code(release),
        int(studies[index]['Sets'].sum()),
        int(studies[index]['Wells'].sum()),
        "",
        int(studies[index]['5D Images'].sum()),
        int(studies[index]['Planes'].sum()),
        studies[index]['Size (TB)'].sum(),
        studies[index]['# of Files'].sum() / 10 ** 6,
        size)
    return(df)


def print_release_stats(df, fmt, target=None):
    # fmt can be any of the pandas.Dataframe.to_{printfmt} methods
    if fmt == 'tsv':
        if target:
            out = df.to_csv(
                target, sep='\t', mode='a', header=False, index=False)
            return
        else:
            out = df.to_csv(sep='\t', header=False, index=False)
    elif fmt in ('json',):
        out = getattr(df, f'to_{fmt}')()
    else:
        out = getattr(df, f'to_{fmt}')(index=False)
    print(out)


def get_release_code(relase_name):
    number = relase_name[len('prod'):]
    patch = int(number) % 10
    minor = int((int(number) - patch) / 10)
    return "0.%s.%s" % (minor, patch)


def main():
    parser = argparse.ArgumentParser("Generate release statistics")
    parser.add_argument(
        "--release", default=None, help="Name of the release")
    parser.add_argument(
        "--release-date", default=None, help="Date of the release")
    parser.add_argument(
        "--db-size", default=None,
        help="Size of the database for the release in GB")
    parser.add_argument("--format", default="tsv", help=(
        "Output format, includes 'string', 'csv', 'tsv' (default), and "
        "'json'. "
        "All other formats include headers and totals. "
        "'string' is the most human-readable (fixed width columns)."
        "If tsv is selected and a file called releases.tsv exists in the "
        "same directory as the file specified by studies_file, the output "
        "will be appended to this file."
    ))
    parser.add_argument('-v', '--verbose', action='count', default=0)
    parser.add_argument(
        "studies_file", help="Path to TSV file containing study stats")
    ns = parser.parse_args()

    levels = [logging.WARNING, logging.INFO, logging.DEBUG]
    level = levels[min(len(levels)-1, ns.verbose)]
    logging.basicConfig(
        level=level, format="%(asctime)s %(levelname)s %(message)s")

    df = create_release_stats(
        ns.studies_file, release=ns.release, date=ns.release_date,
        size=ns.db_size)
    releases_file = os.path.join(
        os.path.dirname(ns.studies_file), 'releases.tsv')
    if os.path.exists(releases_file):
        print_release_stats(df, ns.format, target=releases_file)
    else:
        print_release_stats(df, ns.format)


if __name__ == "__main__":
    main()
