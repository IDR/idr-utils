UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/07-34-32.741_mkngff/e98576e4-b7a7-4f7b-bff8-e9a72cf42de8.zarr' where image in (select id from Image where fileset = 4053393);

begin;
    select mkngff_fileset(
      4053393,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/07-34-32.741_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/07-34-32.741_mkngff/e98576e4-b7a7-4f7b-bff8-e9a72cf42de8.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e98576e4-b7a7-4f7b-bff8-e9a72cf42de8/e98576e4-b7a7-4f7b-bff8-e9a72cf42de8.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/07-34-32.741_mkngff/e98576e4-b7a7-4f7b-bff8-e9a72cf42de8.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e98576e4-b7a7-4f7b-bff8-e9a72cf42de8/e98576e4-b7a7-4f7b-bff8-e9a72cf42de8.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/07-34-32.741_mkngff/e98576e4-b7a7-4f7b-bff8-e9a72cf42de8.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e98576e4-b7a7-4f7b-bff8-e9a72cf42de8/e98576e4-b7a7-4f7b-bff8-e9a72cf42de8.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/07-34-32.741_mkngff/e98576e4-b7a7-4f7b-bff8-e9a72cf42de8.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e98576e4-b7a7-4f7b-bff8-e9a72cf42de8/e98576e4-b7a7-4f7b-bff8-e9a72cf42de8.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/07-34-32.741_mkngff/e98576e4-b7a7-4f7b-bff8-e9a72cf42de8.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e98576e4-b7a7-4f7b-bff8-e9a72cf42de8/e98576e4-b7a7-4f7b-bff8-e9a72cf42de8.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/07-34-32.741_mkngff/e98576e4-b7a7-4f7b-bff8-e9a72cf42de8.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e98576e4-b7a7-4f7b-bff8-e9a72cf42de8/e98576e4-b7a7-4f7b-bff8-e9a72cf42de8.zarr/3/.zarray']
      ]::text[][]
    );
commit;

