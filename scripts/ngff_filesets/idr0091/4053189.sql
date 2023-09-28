UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/19-09-31.653_mkngff/057a0a1c-96d1-4cc5-8e4f-c63ce4961080.zarr' where image in (select id from Image where fileset = 4053189);

begin;
    select mkngff_fileset(
      4053189,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/19-09-31.653_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/19-09-31.653_mkngff/057a0a1c-96d1-4cc5-8e4f-c63ce4961080.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/19-09-31.653_mkngff/057a0a1c-96d1-4cc5-8e4f-c63ce4961080.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/19-09-31.653_mkngff/057a0a1c-96d1-4cc5-8e4f-c63ce4961080.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/19-09-31.653_mkngff/057a0a1c-96d1-4cc5-8e4f-c63ce4961080.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/19-09-31.653_mkngff/057a0a1c-96d1-4cc5-8e4f-c63ce4961080.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/19-09-31.653_mkngff/057a0a1c-96d1-4cc5-8e4f-c63ce4961080.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

