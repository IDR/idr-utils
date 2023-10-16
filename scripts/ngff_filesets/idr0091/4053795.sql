UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/16-01-45.027_mkngff/b055f909-be1f-4538-8b89-e900c1e715fc.zarr' where image in (select id from Image where fileset = 4053795);

begin;
    select mkngff_fileset(
      4053795,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/16-01-45.027_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/16-01-45.027_mkngff/b055f909-be1f-4538-8b89-e900c1e715fc.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b055f909-be1f-4538-8b89-e900c1e715fc/b055f909-be1f-4538-8b89-e900c1e715fc.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/16-01-45.027_mkngff/b055f909-be1f-4538-8b89-e900c1e715fc.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b055f909-be1f-4538-8b89-e900c1e715fc/b055f909-be1f-4538-8b89-e900c1e715fc.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/16-01-45.027_mkngff/b055f909-be1f-4538-8b89-e900c1e715fc.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b055f909-be1f-4538-8b89-e900c1e715fc/b055f909-be1f-4538-8b89-e900c1e715fc.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/16-01-45.027_mkngff/b055f909-be1f-4538-8b89-e900c1e715fc.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b055f909-be1f-4538-8b89-e900c1e715fc/b055f909-be1f-4538-8b89-e900c1e715fc.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/16-01-45.027_mkngff/b055f909-be1f-4538-8b89-e900c1e715fc.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b055f909-be1f-4538-8b89-e900c1e715fc/b055f909-be1f-4538-8b89-e900c1e715fc.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/16-01-45.027_mkngff/b055f909-be1f-4538-8b89-e900c1e715fc.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b055f909-be1f-4538-8b89-e900c1e715fc/b055f909-be1f-4538-8b89-e900c1e715fc.zarr/3/.zarray']
      ]::text[][]
    );
commit;

