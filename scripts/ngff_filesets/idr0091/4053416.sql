UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/09-02-48.751_mkngff/7c148ec1-7274-4fad-9c4c-c8802289ac92.zarr' where image in (select id from Image where fileset = 4053416);

begin;
    select mkngff_fileset(
      4053416,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/09-02-48.751_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/09-02-48.751_mkngff/7c148ec1-7274-4fad-9c4c-c8802289ac92.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/09-02-48.751_mkngff/7c148ec1-7274-4fad-9c4c-c8802289ac92.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/09-02-48.751_mkngff/7c148ec1-7274-4fad-9c4c-c8802289ac92.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/09-02-48.751_mkngff/7c148ec1-7274-4fad-9c4c-c8802289ac92.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/09-02-48.751_mkngff/7c148ec1-7274-4fad-9c4c-c8802289ac92.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/09-02-48.751_mkngff/7c148ec1-7274-4fad-9c4c-c8802289ac92.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

