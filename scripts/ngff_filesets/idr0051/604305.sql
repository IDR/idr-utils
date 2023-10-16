UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-24/2018-11/26/10-39-10.551_mkngff/c49efcfd-e767-4ae5-adbf-299cafd92120.zarr/OME' where image in (select id from Image where fileset = 604305);

begin;
    select mkngff_fileset(
      604305,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-24/2018-11/26/10-39-10.551_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-24/2018-11/26/10-39-10.551_mkngff/c49efcfd-e767-4ae5-adbf-299cafd92120.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/c49efcfd-e767-4ae5-adbf-299cafd92120/c49efcfd-e767-4ae5-adbf-299cafd92120.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-24/2018-11/26/10-39-10.551_mkngff/c49efcfd-e767-4ae5-adbf-299cafd92120.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/c49efcfd-e767-4ae5-adbf-299cafd92120/c49efcfd-e767-4ae5-adbf-299cafd92120.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-24/2018-11/26/10-39-10.551_mkngff/c49efcfd-e767-4ae5-adbf-299cafd92120.zarr/0/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/c49efcfd-e767-4ae5-adbf-299cafd92120/c49efcfd-e767-4ae5-adbf-299cafd92120.zarr/0/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-24/2018-11/26/10-39-10.551_mkngff/c49efcfd-e767-4ae5-adbf-299cafd92120.zarr/0/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/c49efcfd-e767-4ae5-adbf-299cafd92120/c49efcfd-e767-4ae5-adbf-299cafd92120.zarr/0/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-24/2018-11/26/10-39-10.551_mkngff/c49efcfd-e767-4ae5-adbf-299cafd92120.zarr/0/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/c49efcfd-e767-4ae5-adbf-299cafd92120/c49efcfd-e767-4ae5-adbf-299cafd92120.zarr/0/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-24/2018-11/26/10-39-10.551_mkngff/c49efcfd-e767-4ae5-adbf-299cafd92120.zarr/0/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/c49efcfd-e767-4ae5-adbf-299cafd92120/c49efcfd-e767-4ae5-adbf-299cafd92120.zarr/0/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-24/2018-11/26/10-39-10.551_mkngff/c49efcfd-e767-4ae5-adbf-299cafd92120.zarr/OME/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/c49efcfd-e767-4ae5-adbf-299cafd92120/c49efcfd-e767-4ae5-adbf-299cafd92120.zarr/OME/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-24/2018-11/26/10-39-10.551_mkngff/c49efcfd-e767-4ae5-adbf-299cafd92120.zarr/OME/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/c49efcfd-e767-4ae5-adbf-299cafd92120/c49efcfd-e767-4ae5-adbf-299cafd92120.zarr/OME/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-24/2018-11/26/10-39-10.551_mkngff/c49efcfd-e767-4ae5-adbf-299cafd92120.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/c49efcfd-e767-4ae5-adbf-299cafd92120/c49efcfd-e767-4ae5-adbf-299cafd92120.zarr/OME/METADATA.ome.xml']
      ]::text[][]
    );
commit;

