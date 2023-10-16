UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/07-41-03.654_mkngff/e81fa79c-2a84-446a-a159-f4e9f729e21c.zarr' where image in (select id from Image where fileset = 4053394);

begin;
    select mkngff_fileset(
      4053394,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/07-41-03.654_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/07-41-03.654_mkngff/e81fa79c-2a84-446a-a159-f4e9f729e21c.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e81fa79c-2a84-446a-a159-f4e9f729e21c/e81fa79c-2a84-446a-a159-f4e9f729e21c.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/07-41-03.654_mkngff/e81fa79c-2a84-446a-a159-f4e9f729e21c.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e81fa79c-2a84-446a-a159-f4e9f729e21c/e81fa79c-2a84-446a-a159-f4e9f729e21c.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/07-41-03.654_mkngff/e81fa79c-2a84-446a-a159-f4e9f729e21c.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e81fa79c-2a84-446a-a159-f4e9f729e21c/e81fa79c-2a84-446a-a159-f4e9f729e21c.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/07-41-03.654_mkngff/e81fa79c-2a84-446a-a159-f4e9f729e21c.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e81fa79c-2a84-446a-a159-f4e9f729e21c/e81fa79c-2a84-446a-a159-f4e9f729e21c.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/07-41-03.654_mkngff/e81fa79c-2a84-446a-a159-f4e9f729e21c.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e81fa79c-2a84-446a-a159-f4e9f729e21c/e81fa79c-2a84-446a-a159-f4e9f729e21c.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/07-41-03.654_mkngff/e81fa79c-2a84-446a-a159-f4e9f729e21c.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e81fa79c-2a84-446a-a159-f4e9f729e21c/e81fa79c-2a84-446a-a159-f4e9f729e21c.zarr/3/.zarray']
      ]::text[][]
    );
commit;

