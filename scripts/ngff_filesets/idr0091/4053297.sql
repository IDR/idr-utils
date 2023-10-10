UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/02/21-16-50.095_mkngff/02cb9bb6-016b-4f3e-a7f2-c6f18c6ed0ea.zarr' where image in (select id from Image where fileset = 4053297);

begin;
    select mkngff_fileset(
      4053297,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/02/21-16-50.095_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/02/21-16-50.095_mkngff/02cb9bb6-016b-4f3e-a7f2-c6f18c6ed0ea.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/02/21-16-50.095_mkngff/02cb9bb6-016b-4f3e-a7f2-c6f18c6ed0ea.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/02/21-16-50.095_mkngff/02cb9bb6-016b-4f3e-a7f2-c6f18c6ed0ea.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/02/21-16-50.095_mkngff/02cb9bb6-016b-4f3e-a7f2-c6f18c6ed0ea.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/02/21-16-50.095_mkngff/02cb9bb6-016b-4f3e-a7f2-c6f18c6ed0ea.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/02/21-16-50.095_mkngff/02cb9bb6-016b-4f3e-a7f2-c6f18c6ed0ea.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;
