UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/03-53-29.410_mkngff/5e9e3f9b-b83a-45cc-a53e-15b965aaf22e.zarr' where image in (select id from Image where fileset = 4053363);

begin;
    select mkngff_fileset(
      4053363,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/03-53-29.410_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/03-53-29.410_mkngff/5e9e3f9b-b83a-45cc-a53e-15b965aaf22e.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/03-53-29.410_mkngff/5e9e3f9b-b83a-45cc-a53e-15b965aaf22e.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/03-53-29.410_mkngff/5e9e3f9b-b83a-45cc-a53e-15b965aaf22e.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/03-53-29.410_mkngff/5e9e3f9b-b83a-45cc-a53e-15b965aaf22e.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/03-53-29.410_mkngff/5e9e3f9b-b83a-45cc-a53e-15b965aaf22e.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/03-53-29.410_mkngff/5e9e3f9b-b83a-45cc-a53e-15b965aaf22e.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

