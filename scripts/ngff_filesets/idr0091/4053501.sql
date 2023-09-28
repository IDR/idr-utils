UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/14-37-43.042_mkngff/e66f4bfd-0ade-4d78-a2d1-b0310267e1bd.zarr' where image in (select id from Image where fileset = 4053501);

begin;
    select mkngff_fileset(
      4053501,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/14-37-43.042_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/14-37-43.042_mkngff/e66f4bfd-0ade-4d78-a2d1-b0310267e1bd.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/14-37-43.042_mkngff/e66f4bfd-0ade-4d78-a2d1-b0310267e1bd.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/14-37-43.042_mkngff/e66f4bfd-0ade-4d78-a2d1-b0310267e1bd.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/14-37-43.042_mkngff/e66f4bfd-0ade-4d78-a2d1-b0310267e1bd.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/14-37-43.042_mkngff/e66f4bfd-0ade-4d78-a2d1-b0310267e1bd.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/14-37-43.042_mkngff/e66f4bfd-0ade-4d78-a2d1-b0310267e1bd.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

