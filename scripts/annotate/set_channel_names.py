import argparse
import logging
import sys
import pandas
from omero.cli import cli_login
from omero.gateway import BlitzGateway


DESC = '''
Set the channel names provided by the annotation.csv.
'''


def get_args():
    parser = argparse.ArgumentParser(description=DESC)
    parser.add_argument("target", help="Project:123 or Screen:123")
    parser.add_argument("file", help="The annotation.csv file")
    parser.add_argument("-v", "--verbose", action="count", default=0,
                        help="Verbosity (-v, -vv, etc)")
    parser.add_argument("-s", "--separator",
                        help="The separator character for the channel names (default: ;)",
                        default=";")
    parser.add_argument("-c", "--column",
                        help="The name of the channels column (default: Channels)",
                        default="Channels")
    parser.add_argument("-d", "--dryrun", action="store_true",
                        help="Don't perform actions just print what would be done.",
                        default=False)

    args = parser.parse_args()
    loglevel = 30 - (args.verbose * 10)
    if args.dryrun and loglevel > 20:
        loglevel = 20
    logging.basicConfig(level=loglevel, format='%(levelname)s: %(message)s')

    if args.dryrun:
        logging.info("-- DRY RUN --")

    target = args.target.split(':')
    if target[0] == 'Project':
        args.projectId = int(target[1])
        args.screenId = None
    elif target[0] == 'Screen':
        args.screenId = int(target[1])
        args.projectId = None

    return args


def fail(msg):
    logging.critical(msg)
    sys.exit(1)


def read_csv(args):
    channels = {}
    df = pandas.read_csv(args.file, header=0, dtype=str, na_filter=False)
    if args.projectId:
        for index, row in df.iterrows():
            key = f"{row['Dataset Name']}|{row['Image Name']}"
            if key in channels:
                fail(f"Duplicate entry in csv file: {row['Dataset Name']}, {row['Image Name']}")
            channel_str = row[args.column]
            channels[key] = channel_str.split(args.separator)
    elif args.screenId:
        for index, row in df.iterrows():
            key = f"{row['Plate']}|{row['Well']}"
            if key in channels:
                fail(f"Duplicate entry in csv file: {row['Plate']}, {row['Well']}")
            channel_str = row[args.column]
            channels[key] = channel_str.split(args.separator)
    return channels


def get_image(conn, args):
    if args.projectId:
        project = conn.getObject("Project", args.projectId)
        if not project:
            fail("There's no Project with this id.")
        for ds in project.listChildren():
            for img in ds.listChildren():
                yield ds, img
    elif args.screenId:
        screen = conn.getObject("Screen", args.screenId)
        if not screen:
            fail("There's no Screen with this id.")
        for pl in screen.listChildren():
            for well in pl.listChildren():
                if well.getWellSample():
                    yield pl, well


def set_channel_name(img, channel_name, channel_index, dryrun):
    channels = img.getChannels(noRE=True)
    lc = channels[channel_index].getLogicalChannel()
    if not dryrun:
        lc.setName(channel_name)
        lc.save()


def main():
    args = get_args()
    channels = read_csv(args)
    with cli_login() as c:
        conn = BlitzGateway(client_obj=c.get_client())
        for container, img in get_image(conn, args):
            if args.projectId:
                key = f"{container.getName()}|{img.getName()}"
            else:
                # img is a wellsample in that case
                key = f"{container.getName()}|{img.getWellPos()}"
                img = img.getImage()
            if key not in channels:
                logging.warning(f"No channel names found for image {key}.")
                continue
            img_channels = channels[key]
            if len(img_channels) != len(img.getChannels(noRE=True)):
                logging.warning(f"Skipping {key}. Number of image channels ({len(img.getChannels(noRE=True))}) \
                                does not match the number of channel names {len(img_channels)}")
                continue
            for i, channel_name in enumerate(img_channels):
                logging.info(f"Setting channel {i} of {key} to {channel_name}")
                set_channel_name(img, channel_name, i, args.dryrun)


if __name__ == "__main__":
    main()
