import argparse
import logging
import omero.cli
import omero.gateway


DESC = """
Sets the channel names to match the 'Channel' map annotation
"""


parser = argparse.ArgumentParser(description=DESC)
parser.add_argument("container", help="Project:123, Screen:123, etc.")
parser.add_argument("-s",  "--separator", default=",",
                    help="The character which separates the\
                    channel names (default: ',')")
parser.add_argument("-k",  "--key", default="Channels",
                    help="The key of the map annotation (default: 'Channels')")
parser.add_argument("-n",  "--namespace",
                    default=omero.constants.namespaces.NSBULKANNOTATIONS,
                    help=f"The namespace of the map annotation (default:\
                           '{omero.constants.namespaces.NSBULKANNOTATIONS}')")
parser.add_argument("--verbose", "-v", action='count', default=0,
                    help='Increase the command verbosity')
args = parser.parse_args()

default_level = logging.INFO - 10 * args.verbose
logging.basicConfig(level=default_level)
log = logging.getLogger()


def get_images(container):
    """
    Generator to get all images of a container (project, dataset, etc)
    """
    if isinstance(container, omero.gateway.DatasetWrapper):
        for image in container.listChildren():
            yield image
    elif isinstance(container, omero.gateway.ProjectWrapper):
        for dataset in container.listChildren():
            for image in dataset.listChildren():
                yield image
    elif isinstance(container, omero.gateway.PlateWrapper):
        for well in container.listChildren():
            index = well.countWellSample()
            for index in range(0, index):
                yield well.getImage(index)
    elif isinstance(container, omero.gateway.ScreenWrapper):
        for plate in container.listChildren():
            for well in plate.listChildren():
                index = well.countWellSample()
                for index in range(0, index):
                    yield well.getImage(index)


def get_channel_names(image, key, ns, sep):
    """
    Get the channel names as list from the 'Channel' map annotation
    """
    for ann in image.listAnnotations():
        if ann.OMERO_TYPE == omero.model.MapAnnotationI and ann.getNs() == ns:
            tmp = dict(ann.getValue())
            if key in tmp:
                channels = tmp.get(key)
                return channels.split(sep)
    log.warn(f"No {key} map annotation found for image {image.getName()}")
    return None


def set_channel_names(image, channel_names):
    """
    Set the channel names according to the provided list of channel names
    """
    channels = image.getChannels(noRE=True)
    if len(channels) != len(channel_names):
        log.warn(f"Number of channels doesn't match number\
            of channel names. Ignoring image {image.getName()}")
        return False
    for i in range(0, len(channel_names)):
        lc = channels[i].getLogicalChannel()
        lc.setName(channel_names[i])
        lc.save()
    return True


if __name__ == "__main__":
    with omero.cli.cli_login() as c:
        conn = omero.gateway.BlitzGateway(client_obj=c.get_client())
        con_type = args.container.split(':')[0]
        con_id = int(args.container.split(':')[1])

        container = conn.getObject(con_type, attributes={'id': con_id})

        images = get_images(container)
        for image in images:
            channel_names = get_channel_names(image, args.key, args.namespace,
                                              args.separator)
            if channel_names:
                if set_channel_names(image, channel_names):
                    log.debug(f"Set channel names: {channel_names}\
                        for image: {image.getName()}")
