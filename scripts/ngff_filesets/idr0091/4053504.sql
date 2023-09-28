UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/14-53-54.286_mkngff/9bbfb2c8-4525-4432-b03e-20c27be64951.zarr' where image in (select id from Image where fileset = 4053504);

begin;
    select mkngff_fileset(
      4053504,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/14-53-54.286_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/14-53-54.286_mkngff/9bbfb2c8-4525-4432-b03e-20c27be64951.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/14-53-54.286_mkngff/9bbfb2c8-4525-4432-b03e-20c27be64951.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/14-53-54.286_mkngff/9bbfb2c8-4525-4432-b03e-20c27be64951.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/14-53-54.286_mkngff/9bbfb2c8-4525-4432-b03e-20c27be64951.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/14-53-54.286_mkngff/9bbfb2c8-4525-4432-b03e-20c27be64951.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/14-53-54.286_mkngff/9bbfb2c8-4525-4432-b03e-20c27be64951.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

