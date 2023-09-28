UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/11-43-25.868_mkngff/89484603-f1ca-4808-b8a5-ee72db23234c.zarr' where image in (select id from Image where fileset = 4053459);

begin;
    select mkngff_fileset(
      4053459,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/11-43-25.868_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/11-43-25.868_mkngff/89484603-f1ca-4808-b8a5-ee72db23234c.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/11-43-25.868_mkngff/89484603-f1ca-4808-b8a5-ee72db23234c.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/11-43-25.868_mkngff/89484603-f1ca-4808-b8a5-ee72db23234c.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/11-43-25.868_mkngff/89484603-f1ca-4808-b8a5-ee72db23234c.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/11-43-25.868_mkngff/89484603-f1ca-4808-b8a5-ee72db23234c.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/11-43-25.868_mkngff/89484603-f1ca-4808-b8a5-ee72db23234c.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

