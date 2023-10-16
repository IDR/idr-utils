UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/08-03-47.641_mkngff/bd6bbb31-c20d-4769-921e-1ba9864e9320.zarr' where image in (select id from Image where fileset = 4053397);

begin;
    select mkngff_fileset(
      4053397,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/08-03-47.641_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/08-03-47.641_mkngff/bd6bbb31-c20d-4769-921e-1ba9864e9320.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/bd6bbb31-c20d-4769-921e-1ba9864e9320/bd6bbb31-c20d-4769-921e-1ba9864e9320.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/08-03-47.641_mkngff/bd6bbb31-c20d-4769-921e-1ba9864e9320.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/bd6bbb31-c20d-4769-921e-1ba9864e9320/bd6bbb31-c20d-4769-921e-1ba9864e9320.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/08-03-47.641_mkngff/bd6bbb31-c20d-4769-921e-1ba9864e9320.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/bd6bbb31-c20d-4769-921e-1ba9864e9320/bd6bbb31-c20d-4769-921e-1ba9864e9320.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/08-03-47.641_mkngff/bd6bbb31-c20d-4769-921e-1ba9864e9320.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/bd6bbb31-c20d-4769-921e-1ba9864e9320/bd6bbb31-c20d-4769-921e-1ba9864e9320.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/08-03-47.641_mkngff/bd6bbb31-c20d-4769-921e-1ba9864e9320.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/bd6bbb31-c20d-4769-921e-1ba9864e9320/bd6bbb31-c20d-4769-921e-1ba9864e9320.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/08-03-47.641_mkngff/bd6bbb31-c20d-4769-921e-1ba9864e9320.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/bd6bbb31-c20d-4769-921e-1ba9864e9320/bd6bbb31-c20d-4769-921e-1ba9864e9320.zarr/3/.zarray']
      ]::text[][]
    );
commit;

