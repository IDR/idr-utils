UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/00-17-41.896_mkngff/d9bb46f5-1b32-4449-8bdd-8a9012f62302.zarr' where image in (select id from Image where fileset = 4053329);

begin;
    select mkngff_fileset(
      4053329,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/00-17-41.896_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/00-17-41.896_mkngff/d9bb46f5-1b32-4449-8bdd-8a9012f62302.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d9bb46f5-1b32-4449-8bdd-8a9012f62302/d9bb46f5-1b32-4449-8bdd-8a9012f62302.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/00-17-41.896_mkngff/d9bb46f5-1b32-4449-8bdd-8a9012f62302.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d9bb46f5-1b32-4449-8bdd-8a9012f62302/d9bb46f5-1b32-4449-8bdd-8a9012f62302.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/00-17-41.896_mkngff/d9bb46f5-1b32-4449-8bdd-8a9012f62302.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d9bb46f5-1b32-4449-8bdd-8a9012f62302/d9bb46f5-1b32-4449-8bdd-8a9012f62302.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/00-17-41.896_mkngff/d9bb46f5-1b32-4449-8bdd-8a9012f62302.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d9bb46f5-1b32-4449-8bdd-8a9012f62302/d9bb46f5-1b32-4449-8bdd-8a9012f62302.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/00-17-41.896_mkngff/d9bb46f5-1b32-4449-8bdd-8a9012f62302.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d9bb46f5-1b32-4449-8bdd-8a9012f62302/d9bb46f5-1b32-4449-8bdd-8a9012f62302.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/00-17-41.896_mkngff/d9bb46f5-1b32-4449-8bdd-8a9012f62302.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d9bb46f5-1b32-4449-8bdd-8a9012f62302/d9bb46f5-1b32-4449-8bdd-8a9012f62302.zarr/3/.zarray']
      ]::text[][]
    );
commit;

