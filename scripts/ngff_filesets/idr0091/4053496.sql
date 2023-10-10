UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/14-09-14.089_mkngff/e7160504-a847-423f-adaf-2b7655c37f42.zarr' where image in (select id from Image where fileset = 4053496);

begin;
    select mkngff_fileset(
      4053496,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/14-09-14.089_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/14-09-14.089_mkngff/e7160504-a847-423f-adaf-2b7655c37f42.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/14-09-14.089_mkngff/e7160504-a847-423f-adaf-2b7655c37f42.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/14-09-14.089_mkngff/e7160504-a847-423f-adaf-2b7655c37f42.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/14-09-14.089_mkngff/e7160504-a847-423f-adaf-2b7655c37f42.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/14-09-14.089_mkngff/e7160504-a847-423f-adaf-2b7655c37f42.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/14-09-14.089_mkngff/e7160504-a847-423f-adaf-2b7655c37f42.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;
