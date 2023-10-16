UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/18-13-19.250_mkngff/fcb552b3-ec4b-4cae-9b7f-7efafe7d2950.zarr' where image in (select id from Image where fileset = 4053850);

begin;
    select mkngff_fileset(
      4053850,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/18-13-19.250_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/18-13-19.250_mkngff/fcb552b3-ec4b-4cae-9b7f-7efafe7d2950.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/fcb552b3-ec4b-4cae-9b7f-7efafe7d2950/fcb552b3-ec4b-4cae-9b7f-7efafe7d2950.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/18-13-19.250_mkngff/fcb552b3-ec4b-4cae-9b7f-7efafe7d2950.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/fcb552b3-ec4b-4cae-9b7f-7efafe7d2950/fcb552b3-ec4b-4cae-9b7f-7efafe7d2950.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/18-13-19.250_mkngff/fcb552b3-ec4b-4cae-9b7f-7efafe7d2950.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/fcb552b3-ec4b-4cae-9b7f-7efafe7d2950/fcb552b3-ec4b-4cae-9b7f-7efafe7d2950.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/18-13-19.250_mkngff/fcb552b3-ec4b-4cae-9b7f-7efafe7d2950.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/fcb552b3-ec4b-4cae-9b7f-7efafe7d2950/fcb552b3-ec4b-4cae-9b7f-7efafe7d2950.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/18-13-19.250_mkngff/fcb552b3-ec4b-4cae-9b7f-7efafe7d2950.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/fcb552b3-ec4b-4cae-9b7f-7efafe7d2950/fcb552b3-ec4b-4cae-9b7f-7efafe7d2950.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/18-13-19.250_mkngff/fcb552b3-ec4b-4cae-9b7f-7efafe7d2950.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/fcb552b3-ec4b-4cae-9b7f-7efafe7d2950/fcb552b3-ec4b-4cae-9b7f-7efafe7d2950.zarr/3/.zarray']
      ]::text[][]
    );
commit;

