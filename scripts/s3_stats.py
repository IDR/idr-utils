import sys


def main() -> None:
    """Process S3 stats from an input file given as the first CLI argument."""

    if len(sys.argv) < 2:
        print(f"Usage: {sys.argv[0]} <input_file>")
        sys.exit(1)

    input_file = sys.argv[1]

    # generate the input file with:
    # aws --endpoint-url https://uk1s3.embassy.ebi.ac.uk s3 ls --summarize --recursive --no-sign-request bia-idr-integration/S-BIAD1891 > idr0168_du.txt
    #
    # example input lines:
    # 2025-08-11 00:57:36      35255 S-BIAD2216/microglia_zipped/HC/caudate/HC10/Patient_ImageStack_0008.ome.zarr/3/0/22/0/0
    # 2025-08-11 00:57:36      35246 S-BIAD2216/microglia_zipped/HC/caudate/HC10/Patient_ImageStack_0008.ome.zarr/3/0/23/0/0
    # 2025-08-11 00:57:37      35245 S-BIAD2216/microglia_zipped/HC/caudate/HC10/Patient_ImageStack_0008.ome.zarr/3/0/24/0/0
    # 2025-08-11 00:57:37      35233 S-BIAD2216/microglia_zipped/HC/caudate/HC10/Patient_ImageStack_0008.ome.zarr/3/0/3/0/0

    # summarize number of bytes (2nd numeric column) per ome.zarr (derived from path)
    totals: dict[str, int] = {}

    with open(input_file) as f:
        for line in f:
            line = line.strip()
            if not line:
                continue

            parts = line.split()
            # Expect at least: date, time, size, path
            if len(parts) < 4:
                continue

            try:
                size = int(parts[2])
            except ValueError:
                continue

            # Path may be in parts[3], additional whitespace already collapsed by split()
            path = parts[3]

            # Trim to the ome.zarr root
            marker = ".zarr"
            idx = path.find(marker)
            if idx == -1:
                # Not an ome.zarr path
                continue

            ome_zarr = path[: idx + len(marker)]

            totals[ome_zarr] = totals.get(ome_zarr, 0) + size

    # Print summary sorted by ome.zarr path
    for ome_zarr in sorted(totals):
        print(totals[ome_zarr], ome_zarr)

    # Print overall stats
    if totals:
        num_ome_zarrs = len(totals)
        total_bytes = sum(totals.values())
        avg_bytes = total_bytes / num_ome_zarrs
        print()
        print(f"# ome.zarrs: {num_ome_zarrs}")
        print(f"total bytes: {total_bytes}")
        print(f"avg bytes / ome.zarr: {avg_bytes}")


if __name__ == "__main__":
    main()
