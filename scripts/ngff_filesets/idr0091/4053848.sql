UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/18-08-59.896_mkngff/e2d56b8c-3d3f-48ae-a219-1d4605ed7d87.zarr' where image in (select id from Image where fileset = 4053848);

begin;
    select mkngff_fileset(
      4053848,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/18-08-59.896_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/18-08-59.896_mkngff/e2d56b8c-3d3f-48ae-a219-1d4605ed7d87.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e2d56b8c-3d3f-48ae-a219-1d4605ed7d87/e2d56b8c-3d3f-48ae-a219-1d4605ed7d87.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/18-08-59.896_mkngff/e2d56b8c-3d3f-48ae-a219-1d4605ed7d87.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e2d56b8c-3d3f-48ae-a219-1d4605ed7d87/e2d56b8c-3d3f-48ae-a219-1d4605ed7d87.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/18-08-59.896_mkngff/e2d56b8c-3d3f-48ae-a219-1d4605ed7d87.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e2d56b8c-3d3f-48ae-a219-1d4605ed7d87/e2d56b8c-3d3f-48ae-a219-1d4605ed7d87.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/18-08-59.896_mkngff/e2d56b8c-3d3f-48ae-a219-1d4605ed7d87.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e2d56b8c-3d3f-48ae-a219-1d4605ed7d87/e2d56b8c-3d3f-48ae-a219-1d4605ed7d87.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/18-08-59.896_mkngff/e2d56b8c-3d3f-48ae-a219-1d4605ed7d87.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e2d56b8c-3d3f-48ae-a219-1d4605ed7d87/e2d56b8c-3d3f-48ae-a219-1d4605ed7d87.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/18-08-59.896_mkngff/e2d56b8c-3d3f-48ae-a219-1d4605ed7d87.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e2d56b8c-3d3f-48ae-a219-1d4605ed7d87/e2d56b8c-3d3f-48ae-a219-1d4605ed7d87.zarr/3/.zarray']
      ]::text[][]
    );
commit;

