UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/20-43-55.030_mkngff/16d22a6c-4dcb-46a3-ac9c-5a3bbbbb1d63.zarr' where image in (select id from Image where fileset = 4053291);

begin;
    select mkngff_fileset(
      4053291,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/20-43-55.030_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/20-43-55.030_mkngff/16d22a6c-4dcb-46a3-ac9c-5a3bbbbb1d63.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/20-43-55.030_mkngff/16d22a6c-4dcb-46a3-ac9c-5a3bbbbb1d63.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/20-43-55.030_mkngff/16d22a6c-4dcb-46a3-ac9c-5a3bbbbb1d63.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/20-43-55.030_mkngff/16d22a6c-4dcb-46a3-ac9c-5a3bbbbb1d63.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/20-43-55.030_mkngff/16d22a6c-4dcb-46a3-ac9c-5a3bbbbb1d63.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/20-43-55.030_mkngff/16d22a6c-4dcb-46a3-ac9c-5a3bbbbb1d63.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

