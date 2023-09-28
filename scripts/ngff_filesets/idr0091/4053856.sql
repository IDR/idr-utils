UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/18-27-48.640_mkngff/d60b3e89-c0ea-43b2-86f3-cb999fb99488.zarr' where image in (select id from Image where fileset = 4053856);

begin;
    select mkngff_fileset(
      4053856,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/18-27-48.640_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/18-27-48.640_mkngff/d60b3e89-c0ea-43b2-86f3-cb999fb99488.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/18-27-48.640_mkngff/d60b3e89-c0ea-43b2-86f3-cb999fb99488.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/18-27-48.640_mkngff/d60b3e89-c0ea-43b2-86f3-cb999fb99488.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/18-27-48.640_mkngff/d60b3e89-c0ea-43b2-86f3-cb999fb99488.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/18-27-48.640_mkngff/d60b3e89-c0ea-43b2-86f3-cb999fb99488.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/18-27-48.640_mkngff/d60b3e89-c0ea-43b2-86f3-cb999fb99488.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

