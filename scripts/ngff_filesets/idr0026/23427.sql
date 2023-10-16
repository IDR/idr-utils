UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/13/08-23-32.341_mkngff/7634f74e-d408-4cc5-8603-b277036069b9.zarr/OME' where image in (select id from Image where fileset = 23427);

begin;
    select mkngff_fileset(
      23427,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/13/08-23-32.341_mkngff/',
      array[
          ['demo_2/2017-04/13/08-23-32.341_mkngff/7634f74e-d408-4cc5-8603-b277036069b9.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/7634f74e-d408-4cc5-8603-b277036069b9/7634f74e-d408-4cc5-8603-b277036069b9.zarr/.zattrs'],
          ['demo_2/2017-04/13/08-23-32.341_mkngff/7634f74e-d408-4cc5-8603-b277036069b9.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/7634f74e-d408-4cc5-8603-b277036069b9/7634f74e-d408-4cc5-8603-b277036069b9.zarr/.zgroup'],
          ['demo_2/2017-04/13/08-23-32.341_mkngff/7634f74e-d408-4cc5-8603-b277036069b9.zarr/0/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/7634f74e-d408-4cc5-8603-b277036069b9/7634f74e-d408-4cc5-8603-b277036069b9.zarr/0/.zattrs'],
          ['demo_2/2017-04/13/08-23-32.341_mkngff/7634f74e-d408-4cc5-8603-b277036069b9.zarr/0/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/7634f74e-d408-4cc5-8603-b277036069b9/7634f74e-d408-4cc5-8603-b277036069b9.zarr/0/.zgroup'],
          ['demo_2/2017-04/13/08-23-32.341_mkngff/7634f74e-d408-4cc5-8603-b277036069b9.zarr/0/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/7634f74e-d408-4cc5-8603-b277036069b9/7634f74e-d408-4cc5-8603-b277036069b9.zarr/0/0/.zarray'],
          ['demo_2/2017-04/13/08-23-32.341_mkngff/7634f74e-d408-4cc5-8603-b277036069b9.zarr/0/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/7634f74e-d408-4cc5-8603-b277036069b9/7634f74e-d408-4cc5-8603-b277036069b9.zarr/0/1/.zarray'],
          ['demo_2/2017-04/13/08-23-32.341_mkngff/7634f74e-d408-4cc5-8603-b277036069b9.zarr/OME/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/7634f74e-d408-4cc5-8603-b277036069b9/7634f74e-d408-4cc5-8603-b277036069b9.zarr/OME/.zattrs'],
          ['demo_2/2017-04/13/08-23-32.341_mkngff/7634f74e-d408-4cc5-8603-b277036069b9.zarr/OME/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/7634f74e-d408-4cc5-8603-b277036069b9/7634f74e-d408-4cc5-8603-b277036069b9.zarr/OME/.zgroup'],
          ['demo_2/2017-04/13/08-23-32.341_mkngff/7634f74e-d408-4cc5-8603-b277036069b9.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/7634f74e-d408-4cc5-8603-b277036069b9/7634f74e-d408-4cc5-8603-b277036069b9.zarr/OME/METADATA.ome.xml']
      ]::text[][]
    );
commit;

