UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/11-46-26.406_mkngff/893026c5-66d2-44a6-8a1f-57b18f3bebf8.zarr' where image in (select id from Image where fileset = 4053460);

begin;
    select mkngff_fileset(
      4053460,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/11-46-26.406_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/11-46-26.406_mkngff/893026c5-66d2-44a6-8a1f-57b18f3bebf8.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/11-46-26.406_mkngff/893026c5-66d2-44a6-8a1f-57b18f3bebf8.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/11-46-26.406_mkngff/893026c5-66d2-44a6-8a1f-57b18f3bebf8.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/11-46-26.406_mkngff/893026c5-66d2-44a6-8a1f-57b18f3bebf8.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/11-46-26.406_mkngff/893026c5-66d2-44a6-8a1f-57b18f3bebf8.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/11-46-26.406_mkngff/893026c5-66d2-44a6-8a1f-57b18f3bebf8.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

