UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/16-13-41.608_mkngff/7f84e225-a7a1-46bd-80d9-fd0527ed5f05.zarr' where image in (select id from Image where fileset = 4053800);

begin;
    select mkngff_fileset(
      4053800,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/16-13-41.608_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/16-13-41.608_mkngff/7f84e225-a7a1-46bd-80d9-fd0527ed5f05.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7f84e225-a7a1-46bd-80d9-fd0527ed5f05/7f84e225-a7a1-46bd-80d9-fd0527ed5f05.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/16-13-41.608_mkngff/7f84e225-a7a1-46bd-80d9-fd0527ed5f05.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7f84e225-a7a1-46bd-80d9-fd0527ed5f05/7f84e225-a7a1-46bd-80d9-fd0527ed5f05.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/16-13-41.608_mkngff/7f84e225-a7a1-46bd-80d9-fd0527ed5f05.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7f84e225-a7a1-46bd-80d9-fd0527ed5f05/7f84e225-a7a1-46bd-80d9-fd0527ed5f05.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/16-13-41.608_mkngff/7f84e225-a7a1-46bd-80d9-fd0527ed5f05.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7f84e225-a7a1-46bd-80d9-fd0527ed5f05/7f84e225-a7a1-46bd-80d9-fd0527ed5f05.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/16-13-41.608_mkngff/7f84e225-a7a1-46bd-80d9-fd0527ed5f05.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7f84e225-a7a1-46bd-80d9-fd0527ed5f05/7f84e225-a7a1-46bd-80d9-fd0527ed5f05.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/16-13-41.608_mkngff/7f84e225-a7a1-46bd-80d9-fd0527ed5f05.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7f84e225-a7a1-46bd-80d9-fd0527ed5f05/7f84e225-a7a1-46bd-80d9-fd0527ed5f05.zarr/3/.zarray']
      ]::text[][]
    );
commit;

