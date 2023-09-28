UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/17-16-16.089_mkngff/54edb267-f4c9-4942-9ba0-e8351f16228f.zarr' where image in (select id from Image where fileset = 4053826);

begin;
    select mkngff_fileset(
      4053826,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/17-16-16.089_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/17-16-16.089_mkngff/54edb267-f4c9-4942-9ba0-e8351f16228f.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/17-16-16.089_mkngff/54edb267-f4c9-4942-9ba0-e8351f16228f.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/17-16-16.089_mkngff/54edb267-f4c9-4942-9ba0-e8351f16228f.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/17-16-16.089_mkngff/54edb267-f4c9-4942-9ba0-e8351f16228f.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/17-16-16.089_mkngff/54edb267-f4c9-4942-9ba0-e8351f16228f.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/17-16-16.089_mkngff/54edb267-f4c9-4942-9ba0-e8351f16228f.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

