UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/01-49-28.641_mkngff/0e9eb890-70e6-4c06-8fd9-25494f03d20d.zarr' where image in (select id from Image where fileset = 4053344);

begin;
    select mkngff_fileset(
      4053344,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/01-49-28.641_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/01-49-28.641_mkngff/0e9eb890-70e6-4c06-8fd9-25494f03d20d.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/0e9eb890-70e6-4c06-8fd9-25494f03d20d/0e9eb890-70e6-4c06-8fd9-25494f03d20d.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/01-49-28.641_mkngff/0e9eb890-70e6-4c06-8fd9-25494f03d20d.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/0e9eb890-70e6-4c06-8fd9-25494f03d20d/0e9eb890-70e6-4c06-8fd9-25494f03d20d.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/01-49-28.641_mkngff/0e9eb890-70e6-4c06-8fd9-25494f03d20d.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/0e9eb890-70e6-4c06-8fd9-25494f03d20d/0e9eb890-70e6-4c06-8fd9-25494f03d20d.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/01-49-28.641_mkngff/0e9eb890-70e6-4c06-8fd9-25494f03d20d.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/0e9eb890-70e6-4c06-8fd9-25494f03d20d/0e9eb890-70e6-4c06-8fd9-25494f03d20d.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/01-49-28.641_mkngff/0e9eb890-70e6-4c06-8fd9-25494f03d20d.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/0e9eb890-70e6-4c06-8fd9-25494f03d20d/0e9eb890-70e6-4c06-8fd9-25494f03d20d.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/01-49-28.641_mkngff/0e9eb890-70e6-4c06-8fd9-25494f03d20d.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/0e9eb890-70e6-4c06-8fd9-25494f03d20d/0e9eb890-70e6-4c06-8fd9-25494f03d20d.zarr/3/.zarray']
      ]::text[][]
    );
commit;

