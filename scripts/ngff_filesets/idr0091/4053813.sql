UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/16-44-31.306_mkngff/1846442b-6684-454f-b9e2-2a63d72a1b53.zarr' where image in (select id from Image where fileset = 4053813);

begin;
    select mkngff_fileset(
      4053813,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/16-44-31.306_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/16-44-31.306_mkngff/1846442b-6684-454f-b9e2-2a63d72a1b53.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/16-44-31.306_mkngff/1846442b-6684-454f-b9e2-2a63d72a1b53.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/16-44-31.306_mkngff/1846442b-6684-454f-b9e2-2a63d72a1b53.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/16-44-31.306_mkngff/1846442b-6684-454f-b9e2-2a63d72a1b53.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/16-44-31.306_mkngff/1846442b-6684-454f-b9e2-2a63d72a1b53.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/16-44-31.306_mkngff/1846442b-6684-454f-b9e2-2a63d72a1b53.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

