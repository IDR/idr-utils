UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/01-21-53.154_mkngff/ade14e1c-0e4a-4083-9884-0c667b782289.zarr' where image in (select id from Image where fileset = 4053340);

begin;
    select mkngff_fileset(
      4053340,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/01-21-53.154_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/01-21-53.154_mkngff/ade14e1c-0e4a-4083-9884-0c667b782289.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/ade14e1c-0e4a-4083-9884-0c667b782289/ade14e1c-0e4a-4083-9884-0c667b782289.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/01-21-53.154_mkngff/ade14e1c-0e4a-4083-9884-0c667b782289.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/ade14e1c-0e4a-4083-9884-0c667b782289/ade14e1c-0e4a-4083-9884-0c667b782289.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/01-21-53.154_mkngff/ade14e1c-0e4a-4083-9884-0c667b782289.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/ade14e1c-0e4a-4083-9884-0c667b782289/ade14e1c-0e4a-4083-9884-0c667b782289.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/01-21-53.154_mkngff/ade14e1c-0e4a-4083-9884-0c667b782289.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/ade14e1c-0e4a-4083-9884-0c667b782289/ade14e1c-0e4a-4083-9884-0c667b782289.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/01-21-53.154_mkngff/ade14e1c-0e4a-4083-9884-0c667b782289.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/ade14e1c-0e4a-4083-9884-0c667b782289/ade14e1c-0e4a-4083-9884-0c667b782289.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/01-21-53.154_mkngff/ade14e1c-0e4a-4083-9884-0c667b782289.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/ade14e1c-0e4a-4083-9884-0c667b782289/ade14e1c-0e4a-4083-9884-0c667b782289.zarr/3/.zarray']
      ]::text[][]
    );
commit;

