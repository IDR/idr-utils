UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/13/04-13-18.987_mkngff/2e2d2806-53df-4c35-a9be-25c7ca53699d.zarr/OME' where image in (select id from Image where fileset = 23384);

begin;
    select mkngff_fileset(
      23384,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/13/04-13-18.987_mkngff/',
      array[
          ['demo_2/2017-04/13/04-13-18.987_mkngff/2e2d2806-53df-4c35-a9be-25c7ca53699d.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/2e2d2806-53df-4c35-a9be-25c7ca53699d/2e2d2806-53df-4c35-a9be-25c7ca53699d.zarr/.zattrs'],
          ['demo_2/2017-04/13/04-13-18.987_mkngff/2e2d2806-53df-4c35-a9be-25c7ca53699d.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/2e2d2806-53df-4c35-a9be-25c7ca53699d/2e2d2806-53df-4c35-a9be-25c7ca53699d.zarr/.zgroup'],
          ['demo_2/2017-04/13/04-13-18.987_mkngff/2e2d2806-53df-4c35-a9be-25c7ca53699d.zarr/0/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/2e2d2806-53df-4c35-a9be-25c7ca53699d/2e2d2806-53df-4c35-a9be-25c7ca53699d.zarr/0/.zattrs'],
          ['demo_2/2017-04/13/04-13-18.987_mkngff/2e2d2806-53df-4c35-a9be-25c7ca53699d.zarr/0/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/2e2d2806-53df-4c35-a9be-25c7ca53699d/2e2d2806-53df-4c35-a9be-25c7ca53699d.zarr/0/.zgroup'],
          ['demo_2/2017-04/13/04-13-18.987_mkngff/2e2d2806-53df-4c35-a9be-25c7ca53699d.zarr/0/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/2e2d2806-53df-4c35-a9be-25c7ca53699d/2e2d2806-53df-4c35-a9be-25c7ca53699d.zarr/0/0/.zarray'],
          ['demo_2/2017-04/13/04-13-18.987_mkngff/2e2d2806-53df-4c35-a9be-25c7ca53699d.zarr/0/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/2e2d2806-53df-4c35-a9be-25c7ca53699d/2e2d2806-53df-4c35-a9be-25c7ca53699d.zarr/0/1/.zarray'],
          ['demo_2/2017-04/13/04-13-18.987_mkngff/2e2d2806-53df-4c35-a9be-25c7ca53699d.zarr/OME/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/2e2d2806-53df-4c35-a9be-25c7ca53699d/2e2d2806-53df-4c35-a9be-25c7ca53699d.zarr/OME/.zattrs'],
          ['demo_2/2017-04/13/04-13-18.987_mkngff/2e2d2806-53df-4c35-a9be-25c7ca53699d.zarr/OME/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/2e2d2806-53df-4c35-a9be-25c7ca53699d/2e2d2806-53df-4c35-a9be-25c7ca53699d.zarr/OME/.zgroup'],
          ['demo_2/2017-04/13/04-13-18.987_mkngff/2e2d2806-53df-4c35-a9be-25c7ca53699d.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/2e2d2806-53df-4c35-a9be-25c7ca53699d/2e2d2806-53df-4c35-a9be-25c7ca53699d.zarr/OME/METADATA.ome.xml']
      ]::text[][]
    );
commit;

