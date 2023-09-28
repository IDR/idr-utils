UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/20-48-59.513_mkngff/d87c1c93-a6b8-4f7a-bc0f-bcf035d3fd62.zarr' where image in (select id from Image where fileset = 4053292);

begin;
    select mkngff_fileset(
      4053292,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/20-48-59.513_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/20-48-59.513_mkngff/d87c1c93-a6b8-4f7a-bc0f-bcf035d3fd62.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/20-48-59.513_mkngff/d87c1c93-a6b8-4f7a-bc0f-bcf035d3fd62.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/20-48-59.513_mkngff/d87c1c93-a6b8-4f7a-bc0f-bcf035d3fd62.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/20-48-59.513_mkngff/d87c1c93-a6b8-4f7a-bc0f-bcf035d3fd62.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/20-48-59.513_mkngff/d87c1c93-a6b8-4f7a-bc0f-bcf035d3fd62.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/20-48-59.513_mkngff/d87c1c93-a6b8-4f7a-bc0f-bcf035d3fd62.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

