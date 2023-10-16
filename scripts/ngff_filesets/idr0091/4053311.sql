UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/22-37-00.250_mkngff/5652ebf8-5e4b-4171-b51c-08c93f9baf47.zarr' where image in (select id from Image where fileset = 4053311);

begin;
    select mkngff_fileset(
      4053311,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/22-37-00.250_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/22-37-00.250_mkngff/5652ebf8-5e4b-4171-b51c-08c93f9baf47.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/5652ebf8-5e4b-4171-b51c-08c93f9baf47/5652ebf8-5e4b-4171-b51c-08c93f9baf47.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/22-37-00.250_mkngff/5652ebf8-5e4b-4171-b51c-08c93f9baf47.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/5652ebf8-5e4b-4171-b51c-08c93f9baf47/5652ebf8-5e4b-4171-b51c-08c93f9baf47.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/22-37-00.250_mkngff/5652ebf8-5e4b-4171-b51c-08c93f9baf47.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/5652ebf8-5e4b-4171-b51c-08c93f9baf47/5652ebf8-5e4b-4171-b51c-08c93f9baf47.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/22-37-00.250_mkngff/5652ebf8-5e4b-4171-b51c-08c93f9baf47.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/5652ebf8-5e4b-4171-b51c-08c93f9baf47/5652ebf8-5e4b-4171-b51c-08c93f9baf47.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/22-37-00.250_mkngff/5652ebf8-5e4b-4171-b51c-08c93f9baf47.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/5652ebf8-5e4b-4171-b51c-08c93f9baf47/5652ebf8-5e4b-4171-b51c-08c93f9baf47.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/22-37-00.250_mkngff/5652ebf8-5e4b-4171-b51c-08c93f9baf47.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/5652ebf8-5e4b-4171-b51c-08c93f9baf47/5652ebf8-5e4b-4171-b51c-08c93f9baf47.zarr/3/.zarray']
      ]::text[][]
    );
commit;

