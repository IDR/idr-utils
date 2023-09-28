UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/16-39-41.787_mkngff/699cc1fe-c7ec-47ef-96cb-b2c30312261e.zarr' where image in (select id from Image where fileset = 4053811);

begin;
    select mkngff_fileset(
      4053811,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/16-39-41.787_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/16-39-41.787_mkngff/699cc1fe-c7ec-47ef-96cb-b2c30312261e.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/16-39-41.787_mkngff/699cc1fe-c7ec-47ef-96cb-b2c30312261e.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/16-39-41.787_mkngff/699cc1fe-c7ec-47ef-96cb-b2c30312261e.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/16-39-41.787_mkngff/699cc1fe-c7ec-47ef-96cb-b2c30312261e.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/16-39-41.787_mkngff/699cc1fe-c7ec-47ef-96cb-b2c30312261e.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/16-39-41.787_mkngff/699cc1fe-c7ec-47ef-96cb-b2c30312261e.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

