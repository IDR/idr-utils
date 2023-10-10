UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/17-28-44.876_mkngff/0279d398-b906-4b95-ba0a-f402c9c2e9df.zarr' where image in (select id from Image where fileset = 4053171);

begin;
    select mkngff_fileset(
      4053171,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/17-28-44.876_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/17-28-44.876_mkngff/0279d398-b906-4b95-ba0a-f402c9c2e9df.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/17-28-44.876_mkngff/0279d398-b906-4b95-ba0a-f402c9c2e9df.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/17-28-44.876_mkngff/0279d398-b906-4b95-ba0a-f402c9c2e9df.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/17-28-44.876_mkngff/0279d398-b906-4b95-ba0a-f402c9c2e9df.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/17-28-44.876_mkngff/0279d398-b906-4b95-ba0a-f402c9c2e9df.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/17-28-44.876_mkngff/0279d398-b906-4b95-ba0a-f402c9c2e9df.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;
