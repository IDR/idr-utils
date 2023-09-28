UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/22-37-08.742_mkngff/b73dad00-b81e-4ac2-a6bf-9f88a6a68918.zarr' where image in (select id from Image where fileset = 4053312);

begin;
    select mkngff_fileset(
      4053312,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/22-37-08.742_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/22-37-08.742_mkngff/b73dad00-b81e-4ac2-a6bf-9f88a6a68918.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/22-37-08.742_mkngff/b73dad00-b81e-4ac2-a6bf-9f88a6a68918.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/22-37-08.742_mkngff/b73dad00-b81e-4ac2-a6bf-9f88a6a68918.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/22-37-08.742_mkngff/b73dad00-b81e-4ac2-a6bf-9f88a6a68918.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/22-37-08.742_mkngff/b73dad00-b81e-4ac2-a6bf-9f88a6a68918.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/22-37-08.742_mkngff/b73dad00-b81e-4ac2-a6bf-9f88a6a68918.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

