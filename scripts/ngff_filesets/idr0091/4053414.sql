UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/08-53-28.854_mkngff/3efec2bf-42ba-4058-b5e7-34b4905842c0.zarr' where image in (select id from Image where fileset = 4053414);

begin;
    select mkngff_fileset(
      4053414,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/08-53-28.854_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/08-53-28.854_mkngff/3efec2bf-42ba-4058-b5e7-34b4905842c0.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/08-53-28.854_mkngff/3efec2bf-42ba-4058-b5e7-34b4905842c0.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/08-53-28.854_mkngff/3efec2bf-42ba-4058-b5e7-34b4905842c0.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/08-53-28.854_mkngff/3efec2bf-42ba-4058-b5e7-34b4905842c0.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/08-53-28.854_mkngff/3efec2bf-42ba-4058-b5e7-34b4905842c0.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/08-53-28.854_mkngff/3efec2bf-42ba-4058-b5e7-34b4905842c0.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

