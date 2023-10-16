UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/02/16-50-45.161_mkngff/5d4d5fe7-8c50-4983-9d06-5de27a832ae5.zarr' where image in (select id from Image where fileset = 4053164);

begin;
    select mkngff_fileset(
      4053164,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/02/16-50-45.161_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/02/16-50-45.161_mkngff/5d4d5fe7-8c50-4983-9d06-5de27a832ae5.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/5d4d5fe7-8c50-4983-9d06-5de27a832ae5/5d4d5fe7-8c50-4983-9d06-5de27a832ae5.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/02/16-50-45.161_mkngff/5d4d5fe7-8c50-4983-9d06-5de27a832ae5.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/5d4d5fe7-8c50-4983-9d06-5de27a832ae5/5d4d5fe7-8c50-4983-9d06-5de27a832ae5.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/02/16-50-45.161_mkngff/5d4d5fe7-8c50-4983-9d06-5de27a832ae5.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/5d4d5fe7-8c50-4983-9d06-5de27a832ae5/5d4d5fe7-8c50-4983-9d06-5de27a832ae5.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/02/16-50-45.161_mkngff/5d4d5fe7-8c50-4983-9d06-5de27a832ae5.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/5d4d5fe7-8c50-4983-9d06-5de27a832ae5/5d4d5fe7-8c50-4983-9d06-5de27a832ae5.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/02/16-50-45.161_mkngff/5d4d5fe7-8c50-4983-9d06-5de27a832ae5.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/5d4d5fe7-8c50-4983-9d06-5de27a832ae5/5d4d5fe7-8c50-4983-9d06-5de27a832ae5.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/02/16-50-45.161_mkngff/5d4d5fe7-8c50-4983-9d06-5de27a832ae5.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/5d4d5fe7-8c50-4983-9d06-5de27a832ae5/5d4d5fe7-8c50-4983-9d06-5de27a832ae5.zarr/3/.zarray']
      ]::text[][]
    );
commit;

