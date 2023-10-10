UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/02/21-45-49.458_mkngff/0a858893-dcb1-40f7-ac4d-86cd80d1587d.zarr' where image in (select id from Image where fileset = 4053302);

begin;
    select mkngff_fileset(
      4053302,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/02/21-45-49.458_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/02/21-45-49.458_mkngff/0a858893-dcb1-40f7-ac4d-86cd80d1587d.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/02/21-45-49.458_mkngff/0a858893-dcb1-40f7-ac4d-86cd80d1587d.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/02/21-45-49.458_mkngff/0a858893-dcb1-40f7-ac4d-86cd80d1587d.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/02/21-45-49.458_mkngff/0a858893-dcb1-40f7-ac4d-86cd80d1587d.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/02/21-45-49.458_mkngff/0a858893-dcb1-40f7-ac4d-86cd80d1587d.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/02/21-45-49.458_mkngff/0a858893-dcb1-40f7-ac4d-86cd80d1587d.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;
