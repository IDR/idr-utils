UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/04-53-48.297_mkngff/810807e0-aabf-42c1-b874-47648ee88317.zarr' where image in (select id from Image where fileset = 4053370);

begin;
    select mkngff_fileset(
      4053370,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/04-53-48.297_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/04-53-48.297_mkngff/810807e0-aabf-42c1-b874-47648ee88317.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/04-53-48.297_mkngff/810807e0-aabf-42c1-b874-47648ee88317.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/04-53-48.297_mkngff/810807e0-aabf-42c1-b874-47648ee88317.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/04-53-48.297_mkngff/810807e0-aabf-42c1-b874-47648ee88317.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/04-53-48.297_mkngff/810807e0-aabf-42c1-b874-47648ee88317.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/04-53-48.297_mkngff/810807e0-aabf-42c1-b874-47648ee88317.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;
