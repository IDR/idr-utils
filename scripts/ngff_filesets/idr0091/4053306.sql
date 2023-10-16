UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/22-07-29.919_mkngff/990a3f05-0b94-4b2e-add3-ce12c2cdc107.zarr' where image in (select id from Image where fileset = 4053306);

begin;
    select mkngff_fileset(
      4053306,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/22-07-29.919_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/22-07-29.919_mkngff/990a3f05-0b94-4b2e-add3-ce12c2cdc107.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/990a3f05-0b94-4b2e-add3-ce12c2cdc107/990a3f05-0b94-4b2e-add3-ce12c2cdc107.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/22-07-29.919_mkngff/990a3f05-0b94-4b2e-add3-ce12c2cdc107.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/990a3f05-0b94-4b2e-add3-ce12c2cdc107/990a3f05-0b94-4b2e-add3-ce12c2cdc107.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/22-07-29.919_mkngff/990a3f05-0b94-4b2e-add3-ce12c2cdc107.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/990a3f05-0b94-4b2e-add3-ce12c2cdc107/990a3f05-0b94-4b2e-add3-ce12c2cdc107.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/22-07-29.919_mkngff/990a3f05-0b94-4b2e-add3-ce12c2cdc107.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/990a3f05-0b94-4b2e-add3-ce12c2cdc107/990a3f05-0b94-4b2e-add3-ce12c2cdc107.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/22-07-29.919_mkngff/990a3f05-0b94-4b2e-add3-ce12c2cdc107.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/990a3f05-0b94-4b2e-add3-ce12c2cdc107/990a3f05-0b94-4b2e-add3-ce12c2cdc107.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/22-07-29.919_mkngff/990a3f05-0b94-4b2e-add3-ce12c2cdc107.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/990a3f05-0b94-4b2e-add3-ce12c2cdc107/990a3f05-0b94-4b2e-add3-ce12c2cdc107.zarr/3/.zarray']
      ]::text[][]
    );
commit;

