UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/09-28-57.374_mkngff/9ae98908-14aa-453d-952f-deb89e89d03d.zarr' where image in (select id from Image where fileset = 4053422);

begin;
    select mkngff_fileset(
      4053422,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/09-28-57.374_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/09-28-57.374_mkngff/9ae98908-14aa-453d-952f-deb89e89d03d.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/09-28-57.374_mkngff/9ae98908-14aa-453d-952f-deb89e89d03d.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/09-28-57.374_mkngff/9ae98908-14aa-453d-952f-deb89e89d03d.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/09-28-57.374_mkngff/9ae98908-14aa-453d-952f-deb89e89d03d.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/09-28-57.374_mkngff/9ae98908-14aa-453d-952f-deb89e89d03d.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/09-28-57.374_mkngff/9ae98908-14aa-453d-952f-deb89e89d03d.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

