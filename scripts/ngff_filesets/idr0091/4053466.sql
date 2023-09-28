UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/12-03-21.706_mkngff/f8bada99-b417-45a7-91b4-39a20b45c297.zarr' where image in (select id from Image where fileset = 4053466);

begin;
    select mkngff_fileset(
      4053466,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/12-03-21.706_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/12-03-21.706_mkngff/f8bada99-b417-45a7-91b4-39a20b45c297.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/12-03-21.706_mkngff/f8bada99-b417-45a7-91b4-39a20b45c297.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/12-03-21.706_mkngff/f8bada99-b417-45a7-91b4-39a20b45c297.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/12-03-21.706_mkngff/f8bada99-b417-45a7-91b4-39a20b45c297.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/12-03-21.706_mkngff/f8bada99-b417-45a7-91b4-39a20b45c297.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/12-03-21.706_mkngff/f8bada99-b417-45a7-91b4-39a20b45c297.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

