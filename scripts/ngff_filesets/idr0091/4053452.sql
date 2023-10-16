UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/11-24-48.543_mkngff/d4df333b-225f-4e34-bcca-3645118177e2.zarr' where image in (select id from Image where fileset = 4053452);

begin;
    select mkngff_fileset(
      4053452,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/11-24-48.543_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/11-24-48.543_mkngff/d4df333b-225f-4e34-bcca-3645118177e2.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d4df333b-225f-4e34-bcca-3645118177e2/d4df333b-225f-4e34-bcca-3645118177e2.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/11-24-48.543_mkngff/d4df333b-225f-4e34-bcca-3645118177e2.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d4df333b-225f-4e34-bcca-3645118177e2/d4df333b-225f-4e34-bcca-3645118177e2.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/11-24-48.543_mkngff/d4df333b-225f-4e34-bcca-3645118177e2.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d4df333b-225f-4e34-bcca-3645118177e2/d4df333b-225f-4e34-bcca-3645118177e2.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/11-24-48.543_mkngff/d4df333b-225f-4e34-bcca-3645118177e2.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d4df333b-225f-4e34-bcca-3645118177e2/d4df333b-225f-4e34-bcca-3645118177e2.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/11-24-48.543_mkngff/d4df333b-225f-4e34-bcca-3645118177e2.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d4df333b-225f-4e34-bcca-3645118177e2/d4df333b-225f-4e34-bcca-3645118177e2.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/11-24-48.543_mkngff/d4df333b-225f-4e34-bcca-3645118177e2.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d4df333b-225f-4e34-bcca-3645118177e2/d4df333b-225f-4e34-bcca-3645118177e2.zarr/3/.zarray']
      ]::text[][]
    );
commit;

