UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/16-35-16.861_mkngff/f1bfa62e-ccc5-43b4-a20b-8e12659bac38.zarr' where image in (select id from Image where fileset = 4053809);

begin;
    select mkngff_fileset(
      4053809,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/16-35-16.861_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/16-35-16.861_mkngff/f1bfa62e-ccc5-43b4-a20b-8e12659bac38.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/f1bfa62e-ccc5-43b4-a20b-8e12659bac38/f1bfa62e-ccc5-43b4-a20b-8e12659bac38.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/16-35-16.861_mkngff/f1bfa62e-ccc5-43b4-a20b-8e12659bac38.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/f1bfa62e-ccc5-43b4-a20b-8e12659bac38/f1bfa62e-ccc5-43b4-a20b-8e12659bac38.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/16-35-16.861_mkngff/f1bfa62e-ccc5-43b4-a20b-8e12659bac38.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/f1bfa62e-ccc5-43b4-a20b-8e12659bac38/f1bfa62e-ccc5-43b4-a20b-8e12659bac38.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/16-35-16.861_mkngff/f1bfa62e-ccc5-43b4-a20b-8e12659bac38.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/f1bfa62e-ccc5-43b4-a20b-8e12659bac38/f1bfa62e-ccc5-43b4-a20b-8e12659bac38.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/16-35-16.861_mkngff/f1bfa62e-ccc5-43b4-a20b-8e12659bac38.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/f1bfa62e-ccc5-43b4-a20b-8e12659bac38/f1bfa62e-ccc5-43b4-a20b-8e12659bac38.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/16-35-16.861_mkngff/f1bfa62e-ccc5-43b4-a20b-8e12659bac38.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/f1bfa62e-ccc5-43b4-a20b-8e12659bac38/f1bfa62e-ccc5-43b4-a20b-8e12659bac38.zarr/3/.zarray']
      ]::text[][]
    );
commit;

