UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/11-43-25.868_mkngff/89484603-f1ca-4808-b8a5-ee72db23234c.zarr' where image in (select id from Image where fileset = 4053459);

begin;
    select mkngff_fileset(
      4053459,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/11-43-25.868_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/11-43-25.868_mkngff/89484603-f1ca-4808-b8a5-ee72db23234c.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/89484603-f1ca-4808-b8a5-ee72db23234c/89484603-f1ca-4808-b8a5-ee72db23234c.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/11-43-25.868_mkngff/89484603-f1ca-4808-b8a5-ee72db23234c.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/89484603-f1ca-4808-b8a5-ee72db23234c/89484603-f1ca-4808-b8a5-ee72db23234c.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/11-43-25.868_mkngff/89484603-f1ca-4808-b8a5-ee72db23234c.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/89484603-f1ca-4808-b8a5-ee72db23234c/89484603-f1ca-4808-b8a5-ee72db23234c.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/11-43-25.868_mkngff/89484603-f1ca-4808-b8a5-ee72db23234c.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/89484603-f1ca-4808-b8a5-ee72db23234c/89484603-f1ca-4808-b8a5-ee72db23234c.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/11-43-25.868_mkngff/89484603-f1ca-4808-b8a5-ee72db23234c.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/89484603-f1ca-4808-b8a5-ee72db23234c/89484603-f1ca-4808-b8a5-ee72db23234c.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/11-43-25.868_mkngff/89484603-f1ca-4808-b8a5-ee72db23234c.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/89484603-f1ca-4808-b8a5-ee72db23234c/89484603-f1ca-4808-b8a5-ee72db23234c.zarr/3/.zarray']
      ]::text[][]
    );
commit;

