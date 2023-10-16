UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/15-10-31.390_mkngff/8ebcc5b7-ef6b-4dad-88a9-b49f6e284ec8.zarr' where image in (select id from Image where fileset = 4053507);

begin;
    select mkngff_fileset(
      4053507,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/15-10-31.390_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/15-10-31.390_mkngff/8ebcc5b7-ef6b-4dad-88a9-b49f6e284ec8.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/8ebcc5b7-ef6b-4dad-88a9-b49f6e284ec8/8ebcc5b7-ef6b-4dad-88a9-b49f6e284ec8.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/15-10-31.390_mkngff/8ebcc5b7-ef6b-4dad-88a9-b49f6e284ec8.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/8ebcc5b7-ef6b-4dad-88a9-b49f6e284ec8/8ebcc5b7-ef6b-4dad-88a9-b49f6e284ec8.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/15-10-31.390_mkngff/8ebcc5b7-ef6b-4dad-88a9-b49f6e284ec8.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/8ebcc5b7-ef6b-4dad-88a9-b49f6e284ec8/8ebcc5b7-ef6b-4dad-88a9-b49f6e284ec8.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/15-10-31.390_mkngff/8ebcc5b7-ef6b-4dad-88a9-b49f6e284ec8.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/8ebcc5b7-ef6b-4dad-88a9-b49f6e284ec8/8ebcc5b7-ef6b-4dad-88a9-b49f6e284ec8.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/15-10-31.390_mkngff/8ebcc5b7-ef6b-4dad-88a9-b49f6e284ec8.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/8ebcc5b7-ef6b-4dad-88a9-b49f6e284ec8/8ebcc5b7-ef6b-4dad-88a9-b49f6e284ec8.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/15-10-31.390_mkngff/8ebcc5b7-ef6b-4dad-88a9-b49f6e284ec8.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/8ebcc5b7-ef6b-4dad-88a9-b49f6e284ec8/8ebcc5b7-ef6b-4dad-88a9-b49f6e284ec8.zarr/3/.zarray']
      ]::text[][]
    );
commit;

