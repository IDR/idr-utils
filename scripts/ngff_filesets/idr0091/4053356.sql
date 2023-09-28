UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/03-06-45.334_mkngff/7f416032-65cd-41e9-85d8-3e6f58c8ec72.zarr' where image in (select id from Image where fileset = 4053356);

begin;
    select mkngff_fileset(
      4053356,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/03-06-45.334_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/03-06-45.334_mkngff/7f416032-65cd-41e9-85d8-3e6f58c8ec72.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/03-06-45.334_mkngff/7f416032-65cd-41e9-85d8-3e6f58c8ec72.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/03-06-45.334_mkngff/7f416032-65cd-41e9-85d8-3e6f58c8ec72.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/03-06-45.334_mkngff/7f416032-65cd-41e9-85d8-3e6f58c8ec72.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/03-06-45.334_mkngff/7f416032-65cd-41e9-85d8-3e6f58c8ec72.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/03-06-45.334_mkngff/7f416032-65cd-41e9-85d8-3e6f58c8ec72.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

