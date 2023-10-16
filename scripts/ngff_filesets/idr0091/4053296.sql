UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/02/21-11-36.095_mkngff/3ef3c95a-4d1a-4971-a633-e134a7502b56.zarr' where image in (select id from Image where fileset = 4053296);

begin;
    select mkngff_fileset(
      4053296,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/02/21-11-36.095_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/02/21-11-36.095_mkngff/3ef3c95a-4d1a-4971-a633-e134a7502b56.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3ef3c95a-4d1a-4971-a633-e134a7502b56/3ef3c95a-4d1a-4971-a633-e134a7502b56.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/02/21-11-36.095_mkngff/3ef3c95a-4d1a-4971-a633-e134a7502b56.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3ef3c95a-4d1a-4971-a633-e134a7502b56/3ef3c95a-4d1a-4971-a633-e134a7502b56.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/02/21-11-36.095_mkngff/3ef3c95a-4d1a-4971-a633-e134a7502b56.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3ef3c95a-4d1a-4971-a633-e134a7502b56/3ef3c95a-4d1a-4971-a633-e134a7502b56.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/02/21-11-36.095_mkngff/3ef3c95a-4d1a-4971-a633-e134a7502b56.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3ef3c95a-4d1a-4971-a633-e134a7502b56/3ef3c95a-4d1a-4971-a633-e134a7502b56.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/02/21-11-36.095_mkngff/3ef3c95a-4d1a-4971-a633-e134a7502b56.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3ef3c95a-4d1a-4971-a633-e134a7502b56/3ef3c95a-4d1a-4971-a633-e134a7502b56.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/02/21-11-36.095_mkngff/3ef3c95a-4d1a-4971-a633-e134a7502b56.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3ef3c95a-4d1a-4971-a633-e134a7502b56/3ef3c95a-4d1a-4971-a633-e134a7502b56.zarr/3/.zarray']
      ]::text[][]
    );
commit;

