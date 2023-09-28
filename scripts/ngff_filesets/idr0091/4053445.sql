UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/11-04-24.182_mkngff/cdf7c711-92f7-4688-acbe-9db7565ef3ee.zarr' where image in (select id from Image where fileset = 4053445);

begin;
    select mkngff_fileset(
      4053445,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/11-04-24.182_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/11-04-24.182_mkngff/cdf7c711-92f7-4688-acbe-9db7565ef3ee.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/11-04-24.182_mkngff/cdf7c711-92f7-4688-acbe-9db7565ef3ee.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/11-04-24.182_mkngff/cdf7c711-92f7-4688-acbe-9db7565ef3ee.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/11-04-24.182_mkngff/cdf7c711-92f7-4688-acbe-9db7565ef3ee.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/11-04-24.182_mkngff/cdf7c711-92f7-4688-acbe-9db7565ef3ee.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/11-04-24.182_mkngff/cdf7c711-92f7-4688-acbe-9db7565ef3ee.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

