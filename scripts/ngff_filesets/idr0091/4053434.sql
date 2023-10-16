UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/10-20-54.232_mkngff/058b1fac-f751-48d1-8e54-65ce179e1bdb.zarr' where image in (select id from Image where fileset = 4053434);

begin;
    select mkngff_fileset(
      4053434,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/10-20-54.232_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/10-20-54.232_mkngff/058b1fac-f751-48d1-8e54-65ce179e1bdb.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/058b1fac-f751-48d1-8e54-65ce179e1bdb/058b1fac-f751-48d1-8e54-65ce179e1bdb.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/10-20-54.232_mkngff/058b1fac-f751-48d1-8e54-65ce179e1bdb.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/058b1fac-f751-48d1-8e54-65ce179e1bdb/058b1fac-f751-48d1-8e54-65ce179e1bdb.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/10-20-54.232_mkngff/058b1fac-f751-48d1-8e54-65ce179e1bdb.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/058b1fac-f751-48d1-8e54-65ce179e1bdb/058b1fac-f751-48d1-8e54-65ce179e1bdb.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/10-20-54.232_mkngff/058b1fac-f751-48d1-8e54-65ce179e1bdb.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/058b1fac-f751-48d1-8e54-65ce179e1bdb/058b1fac-f751-48d1-8e54-65ce179e1bdb.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/10-20-54.232_mkngff/058b1fac-f751-48d1-8e54-65ce179e1bdb.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/058b1fac-f751-48d1-8e54-65ce179e1bdb/058b1fac-f751-48d1-8e54-65ce179e1bdb.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/10-20-54.232_mkngff/058b1fac-f751-48d1-8e54-65ce179e1bdb.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/058b1fac-f751-48d1-8e54-65ce179e1bdb/058b1fac-f751-48d1-8e54-65ce179e1bdb.zarr/3/.zarray']
      ]::text[][]
    );
commit;

