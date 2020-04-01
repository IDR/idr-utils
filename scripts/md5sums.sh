#!/bin/sh

set -eu

if [ $# -ne 1 ]; then
    echo "USAGE: `basename $0` <directory>"
    echo "Recursively calculates checksums relative to <directory>"
    exit 2
fi

cd "$1"
find . -type f -print0 | sort -z | xargs -0 -n1 md5sum
