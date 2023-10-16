UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/01-29-07.519_mkngff/c4eb6af4-ab03-4289-962e-e537a01e17e2.zarr' where image in (select id from Image where fileset = 4053341);

begin;
    select mkngff_fileset(
      4053341,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/01-29-07.519_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/01-29-07.519_mkngff/c4eb6af4-ab03-4289-962e-e537a01e17e2.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/c4eb6af4-ab03-4289-962e-e537a01e17e2/c4eb6af4-ab03-4289-962e-e537a01e17e2.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/01-29-07.519_mkngff/c4eb6af4-ab03-4289-962e-e537a01e17e2.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/c4eb6af4-ab03-4289-962e-e537a01e17e2/c4eb6af4-ab03-4289-962e-e537a01e17e2.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/01-29-07.519_mkngff/c4eb6af4-ab03-4289-962e-e537a01e17e2.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/c4eb6af4-ab03-4289-962e-e537a01e17e2/c4eb6af4-ab03-4289-962e-e537a01e17e2.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/01-29-07.519_mkngff/c4eb6af4-ab03-4289-962e-e537a01e17e2.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/c4eb6af4-ab03-4289-962e-e537a01e17e2/c4eb6af4-ab03-4289-962e-e537a01e17e2.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/01-29-07.519_mkngff/c4eb6af4-ab03-4289-962e-e537a01e17e2.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/c4eb6af4-ab03-4289-962e-e537a01e17e2/c4eb6af4-ab03-4289-962e-e537a01e17e2.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/01-29-07.519_mkngff/c4eb6af4-ab03-4289-962e-e537a01e17e2.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/c4eb6af4-ab03-4289-962e-e537a01e17e2/c4eb6af4-ab03-4289-962e-e537a01e17e2.zarr/3/.zarray']
      ]::text[][]
    );
commit;

