UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/12/21-48-14.663_mkngff/5414169e-8ca3-464c-8323-e39e84ab7aeb.zarr/OME' where image in (select id from Image where fileset = 23331);

begin;
    select mkngff_fileset(
      23331,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/12/21-48-14.663_mkngff/',
      array[
          ['demo_2/2017-04/12/21-48-14.663_mkngff/5414169e-8ca3-464c-8323-e39e84ab7aeb.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/5414169e-8ca3-464c-8323-e39e84ab7aeb/5414169e-8ca3-464c-8323-e39e84ab7aeb.zarr/.zattrs'],
          ['demo_2/2017-04/12/21-48-14.663_mkngff/5414169e-8ca3-464c-8323-e39e84ab7aeb.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/5414169e-8ca3-464c-8323-e39e84ab7aeb/5414169e-8ca3-464c-8323-e39e84ab7aeb.zarr/.zgroup'],
          ['demo_2/2017-04/12/21-48-14.663_mkngff/5414169e-8ca3-464c-8323-e39e84ab7aeb.zarr/0/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/5414169e-8ca3-464c-8323-e39e84ab7aeb/5414169e-8ca3-464c-8323-e39e84ab7aeb.zarr/0/.zattrs'],
          ['demo_2/2017-04/12/21-48-14.663_mkngff/5414169e-8ca3-464c-8323-e39e84ab7aeb.zarr/0/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/5414169e-8ca3-464c-8323-e39e84ab7aeb/5414169e-8ca3-464c-8323-e39e84ab7aeb.zarr/0/.zgroup'],
          ['demo_2/2017-04/12/21-48-14.663_mkngff/5414169e-8ca3-464c-8323-e39e84ab7aeb.zarr/0/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/5414169e-8ca3-464c-8323-e39e84ab7aeb/5414169e-8ca3-464c-8323-e39e84ab7aeb.zarr/0/0/.zarray'],
          ['demo_2/2017-04/12/21-48-14.663_mkngff/5414169e-8ca3-464c-8323-e39e84ab7aeb.zarr/0/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/5414169e-8ca3-464c-8323-e39e84ab7aeb/5414169e-8ca3-464c-8323-e39e84ab7aeb.zarr/0/1/.zarray'],
          ['demo_2/2017-04/12/21-48-14.663_mkngff/5414169e-8ca3-464c-8323-e39e84ab7aeb.zarr/OME/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/5414169e-8ca3-464c-8323-e39e84ab7aeb/5414169e-8ca3-464c-8323-e39e84ab7aeb.zarr/OME/.zattrs'],
          ['demo_2/2017-04/12/21-48-14.663_mkngff/5414169e-8ca3-464c-8323-e39e84ab7aeb.zarr/OME/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/5414169e-8ca3-464c-8323-e39e84ab7aeb/5414169e-8ca3-464c-8323-e39e84ab7aeb.zarr/OME/.zgroup'],
          ['demo_2/2017-04/12/21-48-14.663_mkngff/5414169e-8ca3-464c-8323-e39e84ab7aeb.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/5414169e-8ca3-464c-8323-e39e84ab7aeb/5414169e-8ca3-464c-8323-e39e84ab7aeb.zarr/OME/METADATA.ome.xml']
      ]::text[][]
    );
commit;

