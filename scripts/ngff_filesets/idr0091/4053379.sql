UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/05-57-00.310_mkngff/26ac4aa1-e640-4fff-9bc3-206a47972eae.zarr' where image in (select id from Image where fileset = 4053379);

begin;
    select mkngff_fileset(
      4053379,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/05-57-00.310_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/05-57-00.310_mkngff/26ac4aa1-e640-4fff-9bc3-206a47972eae.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/05-57-00.310_mkngff/26ac4aa1-e640-4fff-9bc3-206a47972eae.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/05-57-00.310_mkngff/26ac4aa1-e640-4fff-9bc3-206a47972eae.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/05-57-00.310_mkngff/26ac4aa1-e640-4fff-9bc3-206a47972eae.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/05-57-00.310_mkngff/26ac4aa1-e640-4fff-9bc3-206a47972eae.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/05-57-00.310_mkngff/26ac4aa1-e640-4fff-9bc3-206a47972eae.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

