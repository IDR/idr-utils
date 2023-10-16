UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/02/15-17-16.535_mkngff/f34b2171-3892-491b-bca7-69774f115d21.zarr' where image in (select id from Image where fileset = 4053147);

begin;
    select mkngff_fileset(
      4053147,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/02/15-17-16.535_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/02/15-17-16.535_mkngff/f34b2171-3892-491b-bca7-69774f115d21.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/f34b2171-3892-491b-bca7-69774f115d21/f34b2171-3892-491b-bca7-69774f115d21.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/02/15-17-16.535_mkngff/f34b2171-3892-491b-bca7-69774f115d21.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/f34b2171-3892-491b-bca7-69774f115d21/f34b2171-3892-491b-bca7-69774f115d21.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/02/15-17-16.535_mkngff/f34b2171-3892-491b-bca7-69774f115d21.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/f34b2171-3892-491b-bca7-69774f115d21/f34b2171-3892-491b-bca7-69774f115d21.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/02/15-17-16.535_mkngff/f34b2171-3892-491b-bca7-69774f115d21.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/f34b2171-3892-491b-bca7-69774f115d21/f34b2171-3892-491b-bca7-69774f115d21.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/02/15-17-16.535_mkngff/f34b2171-3892-491b-bca7-69774f115d21.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/f34b2171-3892-491b-bca7-69774f115d21/f34b2171-3892-491b-bca7-69774f115d21.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/02/15-17-16.535_mkngff/f34b2171-3892-491b-bca7-69774f115d21.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/f34b2171-3892-491b-bca7-69774f115d21/f34b2171-3892-491b-bca7-69774f115d21.zarr/3/.zarray']
      ]::text[][]
    );
commit;

