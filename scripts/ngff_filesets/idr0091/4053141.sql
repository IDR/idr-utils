UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/02/14-46-33.031_mkngff/f12bdada-57eb-4fab-90ef-9655e4106497.zarr' where image in (select id from Image where fileset = 4053141);

begin;
    select mkngff_fileset(
      4053141,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/02/14-46-33.031_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/02/14-46-33.031_mkngff/f12bdada-57eb-4fab-90ef-9655e4106497.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/02/14-46-33.031_mkngff/f12bdada-57eb-4fab-90ef-9655e4106497.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/02/14-46-33.031_mkngff/f12bdada-57eb-4fab-90ef-9655e4106497.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/02/14-46-33.031_mkngff/f12bdada-57eb-4fab-90ef-9655e4106497.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/02/14-46-33.031_mkngff/f12bdada-57eb-4fab-90ef-9655e4106497.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/02/14-46-33.031_mkngff/f12bdada-57eb-4fab-90ef-9655e4106497.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

