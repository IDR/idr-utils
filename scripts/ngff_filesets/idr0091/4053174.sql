UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/17-45-46.288_mkngff/cfc9055e-156c-48a1-aa7e-3bbd8dafb3b3.zarr' where image in (select id from Image where fileset = 4053174);

begin;
    select mkngff_fileset(
      4053174,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/17-45-46.288_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/17-45-46.288_mkngff/cfc9055e-156c-48a1-aa7e-3bbd8dafb3b3.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/17-45-46.288_mkngff/cfc9055e-156c-48a1-aa7e-3bbd8dafb3b3.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/17-45-46.288_mkngff/cfc9055e-156c-48a1-aa7e-3bbd8dafb3b3.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/17-45-46.288_mkngff/cfc9055e-156c-48a1-aa7e-3bbd8dafb3b3.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/17-45-46.288_mkngff/cfc9055e-156c-48a1-aa7e-3bbd8dafb3b3.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/17-45-46.288_mkngff/cfc9055e-156c-48a1-aa7e-3bbd8dafb3b3.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

