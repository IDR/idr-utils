UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/17-08-50.318_mkngff/ec575e1a-047c-4828-b756-b69ca2ca0262.zarr' where image in (select id from Image where fileset = 4053823);

begin;
    select mkngff_fileset(
      4053823,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/17-08-50.318_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/17-08-50.318_mkngff/ec575e1a-047c-4828-b756-b69ca2ca0262.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/17-08-50.318_mkngff/ec575e1a-047c-4828-b756-b69ca2ca0262.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/17-08-50.318_mkngff/ec575e1a-047c-4828-b756-b69ca2ca0262.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/17-08-50.318_mkngff/ec575e1a-047c-4828-b756-b69ca2ca0262.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/17-08-50.318_mkngff/ec575e1a-047c-4828-b756-b69ca2ca0262.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/17-08-50.318_mkngff/ec575e1a-047c-4828-b756-b69ca2ca0262.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

