UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/05-36-01.267_mkngff/91754bb1-ac22-468c-9d61-b591e1c0d853.zarr' where image in (select id from Image where fileset = 4053376);

begin;
    select mkngff_fileset(
      4053376,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/05-36-01.267_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/05-36-01.267_mkngff/91754bb1-ac22-468c-9d61-b591e1c0d853.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/91754bb1-ac22-468c-9d61-b591e1c0d853/91754bb1-ac22-468c-9d61-b591e1c0d853.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/05-36-01.267_mkngff/91754bb1-ac22-468c-9d61-b591e1c0d853.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/91754bb1-ac22-468c-9d61-b591e1c0d853/91754bb1-ac22-468c-9d61-b591e1c0d853.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/05-36-01.267_mkngff/91754bb1-ac22-468c-9d61-b591e1c0d853.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/91754bb1-ac22-468c-9d61-b591e1c0d853/91754bb1-ac22-468c-9d61-b591e1c0d853.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/05-36-01.267_mkngff/91754bb1-ac22-468c-9d61-b591e1c0d853.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/91754bb1-ac22-468c-9d61-b591e1c0d853/91754bb1-ac22-468c-9d61-b591e1c0d853.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/05-36-01.267_mkngff/91754bb1-ac22-468c-9d61-b591e1c0d853.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/91754bb1-ac22-468c-9d61-b591e1c0d853/91754bb1-ac22-468c-9d61-b591e1c0d853.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/05-36-01.267_mkngff/91754bb1-ac22-468c-9d61-b591e1c0d853.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/91754bb1-ac22-468c-9d61-b591e1c0d853/91754bb1-ac22-468c-9d61-b591e1c0d853.zarr/3/.zarray']
      ]::text[][]
    );
commit;

