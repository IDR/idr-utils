UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/17-21-08.652_mkngff/dda7df6d-1e13-436f-890f-f5b8a1827ee8.zarr' where image in (select id from Image where fileset = 4053828);

begin;
    select mkngff_fileset(
      4053828,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/17-21-08.652_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/17-21-08.652_mkngff/dda7df6d-1e13-436f-890f-f5b8a1827ee8.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/17-21-08.652_mkngff/dda7df6d-1e13-436f-890f-f5b8a1827ee8.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/17-21-08.652_mkngff/dda7df6d-1e13-436f-890f-f5b8a1827ee8.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/17-21-08.652_mkngff/dda7df6d-1e13-436f-890f-f5b8a1827ee8.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/17-21-08.652_mkngff/dda7df6d-1e13-436f-890f-f5b8a1827ee8.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/17-21-08.652_mkngff/dda7df6d-1e13-436f-890f-f5b8a1827ee8.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

