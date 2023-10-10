UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/06-11-56.431_mkngff/6cef8b30-8d87-445b-b9e9-3f62dfafbe3d.zarr' where image in (select id from Image where fileset = 4053381);

begin;
    select mkngff_fileset(
      4053381,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/06-11-56.431_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/06-11-56.431_mkngff/6cef8b30-8d87-445b-b9e9-3f62dfafbe3d.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/06-11-56.431_mkngff/6cef8b30-8d87-445b-b9e9-3f62dfafbe3d.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/06-11-56.431_mkngff/6cef8b30-8d87-445b-b9e9-3f62dfafbe3d.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/06-11-56.431_mkngff/6cef8b30-8d87-445b-b9e9-3f62dfafbe3d.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/06-11-56.431_mkngff/6cef8b30-8d87-445b-b9e9-3f62dfafbe3d.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/06-11-56.431_mkngff/6cef8b30-8d87-445b-b9e9-3f62dfafbe3d.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;
