UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/13/04-04-27.798_mkngff/43671b87-35f8-48f4-83f5-3d9deeeffafb.zarr/OME' where image in (select id from Image where fileset = 23383);

begin;
    select mkngff_fileset(
      23383,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/13/04-04-27.798_mkngff/',
      array[
          ['demo_2/2017-04/13/04-04-27.798_mkngff/43671b87-35f8-48f4-83f5-3d9deeeffafb.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/43671b87-35f8-48f4-83f5-3d9deeeffafb/43671b87-35f8-48f4-83f5-3d9deeeffafb.zarr/.zattrs'],
          ['demo_2/2017-04/13/04-04-27.798_mkngff/43671b87-35f8-48f4-83f5-3d9deeeffafb.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/43671b87-35f8-48f4-83f5-3d9deeeffafb/43671b87-35f8-48f4-83f5-3d9deeeffafb.zarr/.zgroup'],
          ['demo_2/2017-04/13/04-04-27.798_mkngff/43671b87-35f8-48f4-83f5-3d9deeeffafb.zarr/0/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/43671b87-35f8-48f4-83f5-3d9deeeffafb/43671b87-35f8-48f4-83f5-3d9deeeffafb.zarr/0/.zattrs'],
          ['demo_2/2017-04/13/04-04-27.798_mkngff/43671b87-35f8-48f4-83f5-3d9deeeffafb.zarr/0/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/43671b87-35f8-48f4-83f5-3d9deeeffafb/43671b87-35f8-48f4-83f5-3d9deeeffafb.zarr/0/.zgroup'],
          ['demo_2/2017-04/13/04-04-27.798_mkngff/43671b87-35f8-48f4-83f5-3d9deeeffafb.zarr/0/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/43671b87-35f8-48f4-83f5-3d9deeeffafb/43671b87-35f8-48f4-83f5-3d9deeeffafb.zarr/0/0/.zarray'],
          ['demo_2/2017-04/13/04-04-27.798_mkngff/43671b87-35f8-48f4-83f5-3d9deeeffafb.zarr/0/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/43671b87-35f8-48f4-83f5-3d9deeeffafb/43671b87-35f8-48f4-83f5-3d9deeeffafb.zarr/0/1/.zarray'],
          ['demo_2/2017-04/13/04-04-27.798_mkngff/43671b87-35f8-48f4-83f5-3d9deeeffafb.zarr/OME/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/43671b87-35f8-48f4-83f5-3d9deeeffafb/43671b87-35f8-48f4-83f5-3d9deeeffafb.zarr/OME/.zattrs'],
          ['demo_2/2017-04/13/04-04-27.798_mkngff/43671b87-35f8-48f4-83f5-3d9deeeffafb.zarr/OME/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/43671b87-35f8-48f4-83f5-3d9deeeffafb/43671b87-35f8-48f4-83f5-3d9deeeffafb.zarr/OME/.zgroup'],
          ['demo_2/2017-04/13/04-04-27.798_mkngff/43671b87-35f8-48f4-83f5-3d9deeeffafb.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/43671b87-35f8-48f4-83f5-3d9deeeffafb/43671b87-35f8-48f4-83f5-3d9deeeffafb.zarr/OME/METADATA.ome.xml']
      ]::text[][]
    );
commit;

