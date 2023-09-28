UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/18-39-11.489_mkngff/6f8f3ec1-8d9a-4c2f-be11-57701764b80a.zarr' where image in (select id from Image where fileset = 4053861);

begin;
    select mkngff_fileset(
      4053861,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/18-39-11.489_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/18-39-11.489_mkngff/6f8f3ec1-8d9a-4c2f-be11-57701764b80a.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/18-39-11.489_mkngff/6f8f3ec1-8d9a-4c2f-be11-57701764b80a.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/18-39-11.489_mkngff/6f8f3ec1-8d9a-4c2f-be11-57701764b80a.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/18-39-11.489_mkngff/6f8f3ec1-8d9a-4c2f-be11-57701764b80a.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/18-39-11.489_mkngff/6f8f3ec1-8d9a-4c2f-be11-57701764b80a.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/18-39-11.489_mkngff/6f8f3ec1-8d9a-4c2f-be11-57701764b80a.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

