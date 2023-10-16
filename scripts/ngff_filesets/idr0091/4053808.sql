UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/16-33-01.974_mkngff/b7e14ca1-57c6-469a-8731-b234d9f9dcc2.zarr' where image in (select id from Image where fileset = 4053808);

begin;
    select mkngff_fileset(
      4053808,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/16-33-01.974_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/16-33-01.974_mkngff/b7e14ca1-57c6-469a-8731-b234d9f9dcc2.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b7e14ca1-57c6-469a-8731-b234d9f9dcc2/b7e14ca1-57c6-469a-8731-b234d9f9dcc2.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/16-33-01.974_mkngff/b7e14ca1-57c6-469a-8731-b234d9f9dcc2.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b7e14ca1-57c6-469a-8731-b234d9f9dcc2/b7e14ca1-57c6-469a-8731-b234d9f9dcc2.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/16-33-01.974_mkngff/b7e14ca1-57c6-469a-8731-b234d9f9dcc2.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b7e14ca1-57c6-469a-8731-b234d9f9dcc2/b7e14ca1-57c6-469a-8731-b234d9f9dcc2.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/16-33-01.974_mkngff/b7e14ca1-57c6-469a-8731-b234d9f9dcc2.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b7e14ca1-57c6-469a-8731-b234d9f9dcc2/b7e14ca1-57c6-469a-8731-b234d9f9dcc2.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/16-33-01.974_mkngff/b7e14ca1-57c6-469a-8731-b234d9f9dcc2.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b7e14ca1-57c6-469a-8731-b234d9f9dcc2/b7e14ca1-57c6-469a-8731-b234d9f9dcc2.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/16-33-01.974_mkngff/b7e14ca1-57c6-469a-8731-b234d9f9dcc2.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b7e14ca1-57c6-469a-8731-b234d9f9dcc2/b7e14ca1-57c6-469a-8731-b234d9f9dcc2.zarr/3/.zarray']
      ]::text[][]
    );
commit;

