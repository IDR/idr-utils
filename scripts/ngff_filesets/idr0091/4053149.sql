UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/02/15-28-40.355_mkngff/82cc6f3c-7a6f-48c7-a757-3fd67da8fd83.zarr' where image in (select id from Image where fileset = 4053149);

begin;
    select mkngff_fileset(
      4053149,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/02/15-28-40.355_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/02/15-28-40.355_mkngff/82cc6f3c-7a6f-48c7-a757-3fd67da8fd83.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/02/15-28-40.355_mkngff/82cc6f3c-7a6f-48c7-a757-3fd67da8fd83.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/02/15-28-40.355_mkngff/82cc6f3c-7a6f-48c7-a757-3fd67da8fd83.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/02/15-28-40.355_mkngff/82cc6f3c-7a6f-48c7-a757-3fd67da8fd83.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/02/15-28-40.355_mkngff/82cc6f3c-7a6f-48c7-a757-3fd67da8fd83.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/02/15-28-40.355_mkngff/82cc6f3c-7a6f-48c7-a757-3fd67da8fd83.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

