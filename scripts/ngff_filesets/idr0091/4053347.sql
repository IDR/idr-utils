UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/02-09-06.966_mkngff/1f86bbd6-6bd5-429e-b09b-f88852077c84.zarr' where image in (select id from Image where fileset = 4053347);

begin;
    select mkngff_fileset(
      4053347,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/02-09-06.966_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/02-09-06.966_mkngff/1f86bbd6-6bd5-429e-b09b-f88852077c84.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/02-09-06.966_mkngff/1f86bbd6-6bd5-429e-b09b-f88852077c84.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/02-09-06.966_mkngff/1f86bbd6-6bd5-429e-b09b-f88852077c84.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/02-09-06.966_mkngff/1f86bbd6-6bd5-429e-b09b-f88852077c84.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/02-09-06.966_mkngff/1f86bbd6-6bd5-429e-b09b-f88852077c84.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/02-09-06.966_mkngff/1f86bbd6-6bd5-429e-b09b-f88852077c84.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

