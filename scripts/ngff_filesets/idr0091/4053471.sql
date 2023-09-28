UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/12-17-46.750_mkngff/7de8bc04-3ba3-42bd-903f-1e4afae1af52.zarr' where image in (select id from Image where fileset = 4053471);

begin;
    select mkngff_fileset(
      4053471,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/12-17-46.750_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/12-17-46.750_mkngff/7de8bc04-3ba3-42bd-903f-1e4afae1af52.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/12-17-46.750_mkngff/7de8bc04-3ba3-42bd-903f-1e4afae1af52.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/12-17-46.750_mkngff/7de8bc04-3ba3-42bd-903f-1e4afae1af52.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/12-17-46.750_mkngff/7de8bc04-3ba3-42bd-903f-1e4afae1af52.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/12-17-46.750_mkngff/7de8bc04-3ba3-42bd-903f-1e4afae1af52.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/12-17-46.750_mkngff/7de8bc04-3ba3-42bd-903f-1e4afae1af52.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

