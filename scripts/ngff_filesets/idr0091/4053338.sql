UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/01-09-36.450_mkngff/13aaa3fc-6f22-4218-a2e3-a8686f28db70.zarr' where image in (select id from Image where fileset = 4053338);

begin;
    select mkngff_fileset(
      4053338,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/01-09-36.450_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/01-09-36.450_mkngff/13aaa3fc-6f22-4218-a2e3-a8686f28db70.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/01-09-36.450_mkngff/13aaa3fc-6f22-4218-a2e3-a8686f28db70.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/01-09-36.450_mkngff/13aaa3fc-6f22-4218-a2e3-a8686f28db70.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/01-09-36.450_mkngff/13aaa3fc-6f22-4218-a2e3-a8686f28db70.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/01-09-36.450_mkngff/13aaa3fc-6f22-4218-a2e3-a8686f28db70.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/01-09-36.450_mkngff/13aaa3fc-6f22-4218-a2e3-a8686f28db70.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

