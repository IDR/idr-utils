UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/16-23-14.063_mkngff/7eefa51d-220b-4ade-ba4c-d18f9f2fe5ee.zarr' where image in (select id from Image where fileset = 4053804);

begin;
    select mkngff_fileset(
      4053804,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/16-23-14.063_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/16-23-14.063_mkngff/7eefa51d-220b-4ade-ba4c-d18f9f2fe5ee.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7eefa51d-220b-4ade-ba4c-d18f9f2fe5ee/7eefa51d-220b-4ade-ba4c-d18f9f2fe5ee.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/16-23-14.063_mkngff/7eefa51d-220b-4ade-ba4c-d18f9f2fe5ee.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7eefa51d-220b-4ade-ba4c-d18f9f2fe5ee/7eefa51d-220b-4ade-ba4c-d18f9f2fe5ee.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/16-23-14.063_mkngff/7eefa51d-220b-4ade-ba4c-d18f9f2fe5ee.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7eefa51d-220b-4ade-ba4c-d18f9f2fe5ee/7eefa51d-220b-4ade-ba4c-d18f9f2fe5ee.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/16-23-14.063_mkngff/7eefa51d-220b-4ade-ba4c-d18f9f2fe5ee.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7eefa51d-220b-4ade-ba4c-d18f9f2fe5ee/7eefa51d-220b-4ade-ba4c-d18f9f2fe5ee.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/16-23-14.063_mkngff/7eefa51d-220b-4ade-ba4c-d18f9f2fe5ee.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7eefa51d-220b-4ade-ba4c-d18f9f2fe5ee/7eefa51d-220b-4ade-ba4c-d18f9f2fe5ee.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/16-23-14.063_mkngff/7eefa51d-220b-4ade-ba4c-d18f9f2fe5ee.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7eefa51d-220b-4ade-ba4c-d18f9f2fe5ee/7eefa51d-220b-4ade-ba4c-d18f9f2fe5ee.zarr/3/.zarray']
      ]::text[][]
    );
commit;

