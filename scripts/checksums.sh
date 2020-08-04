#!/bin/sh

set -eu

if [ $# -ne 2 ]; then
    echo "USAGE: `basename $0` <algorithm> <directory>"
    echo "Recursively calculates checksums relative to <directory>"
    echo "Detected algorithms:"
    for alg in md5sum sha1sum sha224sum sha256sum sha512sum; do
        if command -v "$alg" > /dev/null; then
            echo "  $alg"
        fi
    done
    exit 2
fi

alg="$1"
target="$2"

if ! command -v "$alg"; then
    echo "Invalid checksum command: $alg"
    exit 2
fi

cd "$target"
find . -type f -print0 | sort -z | xargs -0 -n1 "$alg"
