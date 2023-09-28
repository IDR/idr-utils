UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/12-32-23.967_mkngff/6fe79809-1104-4de7-b648-f438a1bb61a8.zarr' where image in (select id from Image where fileset = 4053476);

begin;
    select mkngff_fileset(
      4053476,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/12-32-23.967_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/12-32-23.967_mkngff/6fe79809-1104-4de7-b648-f438a1bb61a8.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/12-32-23.967_mkngff/6fe79809-1104-4de7-b648-f438a1bb61a8.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/12-32-23.967_mkngff/6fe79809-1104-4de7-b648-f438a1bb61a8.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/12-32-23.967_mkngff/6fe79809-1104-4de7-b648-f438a1bb61a8.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/12-32-23.967_mkngff/6fe79809-1104-4de7-b648-f438a1bb61a8.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/12-32-23.967_mkngff/6fe79809-1104-4de7-b648-f438a1bb61a8.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

