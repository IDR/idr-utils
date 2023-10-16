UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/11-29-51.886_mkngff/df8d4110-1c13-43b7-a06a-1c20b6598714.zarr' where image in (select id from Image where fileset = 4053454);

begin;
    select mkngff_fileset(
      4053454,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/11-29-51.886_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/11-29-51.886_mkngff/df8d4110-1c13-43b7-a06a-1c20b6598714.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/df8d4110-1c13-43b7-a06a-1c20b6598714/df8d4110-1c13-43b7-a06a-1c20b6598714.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/11-29-51.886_mkngff/df8d4110-1c13-43b7-a06a-1c20b6598714.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/df8d4110-1c13-43b7-a06a-1c20b6598714/df8d4110-1c13-43b7-a06a-1c20b6598714.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/11-29-51.886_mkngff/df8d4110-1c13-43b7-a06a-1c20b6598714.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/df8d4110-1c13-43b7-a06a-1c20b6598714/df8d4110-1c13-43b7-a06a-1c20b6598714.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/11-29-51.886_mkngff/df8d4110-1c13-43b7-a06a-1c20b6598714.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/df8d4110-1c13-43b7-a06a-1c20b6598714/df8d4110-1c13-43b7-a06a-1c20b6598714.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/11-29-51.886_mkngff/df8d4110-1c13-43b7-a06a-1c20b6598714.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/df8d4110-1c13-43b7-a06a-1c20b6598714/df8d4110-1c13-43b7-a06a-1c20b6598714.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/11-29-51.886_mkngff/df8d4110-1c13-43b7-a06a-1c20b6598714.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/df8d4110-1c13-43b7-a06a-1c20b6598714/df8d4110-1c13-43b7-a06a-1c20b6598714.zarr/3/.zarray']
      ]::text[][]
    );
commit;

