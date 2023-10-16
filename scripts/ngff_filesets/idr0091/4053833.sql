UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/17-33-14.991_mkngff/3df3d3db-3d06-4d39-b24b-cbe8caa6bf2a.zarr' where image in (select id from Image where fileset = 4053833);

begin;
    select mkngff_fileset(
      4053833,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/17-33-14.991_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/17-33-14.991_mkngff/3df3d3db-3d06-4d39-b24b-cbe8caa6bf2a.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3df3d3db-3d06-4d39-b24b-cbe8caa6bf2a/3df3d3db-3d06-4d39-b24b-cbe8caa6bf2a.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/17-33-14.991_mkngff/3df3d3db-3d06-4d39-b24b-cbe8caa6bf2a.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3df3d3db-3d06-4d39-b24b-cbe8caa6bf2a/3df3d3db-3d06-4d39-b24b-cbe8caa6bf2a.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/17-33-14.991_mkngff/3df3d3db-3d06-4d39-b24b-cbe8caa6bf2a.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3df3d3db-3d06-4d39-b24b-cbe8caa6bf2a/3df3d3db-3d06-4d39-b24b-cbe8caa6bf2a.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/17-33-14.991_mkngff/3df3d3db-3d06-4d39-b24b-cbe8caa6bf2a.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3df3d3db-3d06-4d39-b24b-cbe8caa6bf2a/3df3d3db-3d06-4d39-b24b-cbe8caa6bf2a.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/17-33-14.991_mkngff/3df3d3db-3d06-4d39-b24b-cbe8caa6bf2a.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3df3d3db-3d06-4d39-b24b-cbe8caa6bf2a/3df3d3db-3d06-4d39-b24b-cbe8caa6bf2a.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/17-33-14.991_mkngff/3df3d3db-3d06-4d39-b24b-cbe8caa6bf2a.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3df3d3db-3d06-4d39-b24b-cbe8caa6bf2a/3df3d3db-3d06-4d39-b24b-cbe8caa6bf2a.zarr/3/.zarray']
      ]::text[][]
    );
commit;

