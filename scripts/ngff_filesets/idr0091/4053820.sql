UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/17-01-14.232_mkngff/754b83a2-5d11-4cb9-9bfe-9c4a702c4027.zarr' where image in (select id from Image where fileset = 4053820);

begin;
    select mkngff_fileset(
      4053820,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/17-01-14.232_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/17-01-14.232_mkngff/754b83a2-5d11-4cb9-9bfe-9c4a702c4027.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/754b83a2-5d11-4cb9-9bfe-9c4a702c4027/754b83a2-5d11-4cb9-9bfe-9c4a702c4027.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/17-01-14.232_mkngff/754b83a2-5d11-4cb9-9bfe-9c4a702c4027.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/754b83a2-5d11-4cb9-9bfe-9c4a702c4027/754b83a2-5d11-4cb9-9bfe-9c4a702c4027.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/17-01-14.232_mkngff/754b83a2-5d11-4cb9-9bfe-9c4a702c4027.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/754b83a2-5d11-4cb9-9bfe-9c4a702c4027/754b83a2-5d11-4cb9-9bfe-9c4a702c4027.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/17-01-14.232_mkngff/754b83a2-5d11-4cb9-9bfe-9c4a702c4027.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/754b83a2-5d11-4cb9-9bfe-9c4a702c4027/754b83a2-5d11-4cb9-9bfe-9c4a702c4027.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/17-01-14.232_mkngff/754b83a2-5d11-4cb9-9bfe-9c4a702c4027.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/754b83a2-5d11-4cb9-9bfe-9c4a702c4027/754b83a2-5d11-4cb9-9bfe-9c4a702c4027.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/17-01-14.232_mkngff/754b83a2-5d11-4cb9-9bfe-9c4a702c4027.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/754b83a2-5d11-4cb9-9bfe-9c4a702c4027/754b83a2-5d11-4cb9-9bfe-9c4a702c4027.zarr/3/.zarray']
      ]::text[][]
    );
commit;

