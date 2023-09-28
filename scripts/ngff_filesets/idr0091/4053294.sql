UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/02/21-00-05.480_mkngff/1a7ea7dc-9d9b-4f86-8ec7-6dda49aac651.zarr' where image in (select id from Image where fileset = 4053294);

begin;
    select mkngff_fileset(
      4053294,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/02/21-00-05.480_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/02/21-00-05.480_mkngff/1a7ea7dc-9d9b-4f86-8ec7-6dda49aac651.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/02/21-00-05.480_mkngff/1a7ea7dc-9d9b-4f86-8ec7-6dda49aac651.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/02/21-00-05.480_mkngff/1a7ea7dc-9d9b-4f86-8ec7-6dda49aac651.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/02/21-00-05.480_mkngff/1a7ea7dc-9d9b-4f86-8ec7-6dda49aac651.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/02/21-00-05.480_mkngff/1a7ea7dc-9d9b-4f86-8ec7-6dda49aac651.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/02/21-00-05.480_mkngff/1a7ea7dc-9d9b-4f86-8ec7-6dda49aac651.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

