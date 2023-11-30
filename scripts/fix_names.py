import argparse
import logging
import re
import Levenshtein

DESC = """Script to fix dataset names, etc. For example if you have dataset names like "1_blah_blah"
in the filePaths.tsv, but in the annotation.csv they are called like "1: Blah blah" (or the 
other way round). Then you can use this script to correct either of these. Can also be
used to fix typos. Note: Needs pip package 'levenshtein'!
"""

parser = argparse.ArgumentParser(description=DESC)
parser.add_argument("file1", help="File containing the correct names, one per line.")
parser.add_argument("file2", help="The file to correct")
parser.add_argument("pat", help="The pattern how to replace the name (needs a named group called 'name'), e.g. \"^(?P<name>.+),\"")
parser.add_argument("file3", nargs="?", help="Optional output file (default: stout)")
parser.add_argument('-y', action="store_true", default=False, help="Don't ask, assume yes for all "
                                                                   "suggested replacements")
parser.add_argument('-m', default=50, type=int, help="Maximum difference (1-100, default: 50)")
parser.add_argument("-v", "--verbose", action="count", default=0,
                    help="Verbosity (-v, -vv, etc)")

args = parser.parse_args()
loglevel = 30 - (args.verbose * 10)
logging.basicConfig(level=loglevel, format='%(levelname)s: %(message)s')


def read_file(file):
    """
    Get file content (line-by-line, unique)
    :param file:
    :return:
    """
    res = set()
    with open(file, "r") as infile:
        for line in infile.readlines():
            line = line.strip()
            res.add(line)
    return res


def extract_names(file, pat, group_name):
    """
    Extract all unique matches of a named group from a file as sorted list.
    :param file: The file
    :param pat: The regular expression, e.g. "^(?P<name>.+),"
    :param group_name: The name of the named group, e.g. "name"
    :return:
    """
    res = set()
    pat = re.compile(pat)
    with open(file, "r") as infile:
        for line in infile.readlines():
            line = line.strip()
            m = pat.match(line)
            if m:
                res.add(m.group(group_name))
    res = list(res)
    res.sort()
    return res


def get_best_match(name, suggestions, max_dist):
    """
    Returns the best match (lowest Levenshtein distance) for name out
    of the list/set of suggestions
    :param name: The name to find the best match for
    :param suggestions: A list/set of suggestions
    :param max_dist: Return None if the best match is more than max_dist (%)
                     different
    :return: See above
    """
    best = None
    best_distance = 1000000
    for suggestion in suggestions:
        dist = Levenshtein.distance(name, suggestion)
        if dist < best_distance:
            best_distance = dist
            best = suggestion

    rel_best_dist = best_distance * 100 / len(name)
    if rel_best_dist > max_dist:
        return None
    return best


def fix(file, pat, group_name, replacements, out_file):
    """
    Replace all matches with the equivalent string from replacements
    :param file: The file
    :param pat: The regular expression, e.g. "^(?P<name>.+),"
    :param group_name: The group name in the regex, e.g. "name"
    :param replacements: Dictionary of replacements
    :param out_file: Optional output file
    :return:
    """
    pat = re.compile(pat)
    with open(file) as infile:
        for i, line in enumerate(infile.readlines()):
            line = line.strip()
            m = pat.match(line)
            to_print = line
            if m:
                old_name = m.group(group_name)
                if old_name in replacements:
                    to_print = line.replace(old_name, replacements[old_name])
                    logging.debug(f"{i},{m.start()}-{m.end()}: '{old_name}' -> '{replacements[old_name]}'")
                else:
                    logging.debug(f"{i}: No replacement for '{old_name}' found.")
            if out_file:
                out_file.write(f"{to_print}\n")
            else:
                print(to_print)


def get_replacements(names, suggestions, max_dist, approve_all=False):
    """
    Suggest replacements, ask user for confirmation
    :param names: The names which potentially need replacing
    :param suggestions: List/set of suggested correct names
    :param max_dist: Only replace names with strings which are <= max_dist(%) different
    :param approve_all: If true, don't ask user
    :return: A dictionary of replacements
    """
    replacements = dict()
    for name in names:
        best_match = get_best_match(name, suggestions, max_dist)
        if not best_match:
            logging.info(f"No replacement found for '{name}'")
            continue
        if best_match == name:
            logging.debug(f"'{name}' is already best match.")
            continue
        if approve_all:
            replacements[name] = best_match
            logging.info(f"Replace '{name}' with '{best_match}'")
        else:
            approve = input(f"Replace '{name}' with '{best_match}'? [default: yes]")
            if approve == "" or approve.lower() == "y" or approve.lower() == "yes":
                replacements[name] = best_match
    return replacements


names = extract_names(args.file2, args.pat, "name")
correct_names = read_file(args.file1)
replacements = get_replacements(names, correct_names, args.m, approve_all=args.y)

if args.file3:
    with open(args.file3, mode="w") as outfile:
        fix(args.file2, args.pat, "name", replacements, outfile)
else:
    fix(args.file2, args.pat, "name", replacements, None)
