UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/15-59-31.052_mkngff/dd844a55-c7b7-4c62-a943-6b5514d70572.zarr' where image in (select id from Image where fileset = 4053794);

begin;
    select mkngff_fileset(
      4053794,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/15-59-31.052_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/15-59-31.052_mkngff/dd844a55-c7b7-4c62-a943-6b5514d70572.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/dd844a55-c7b7-4c62-a943-6b5514d70572/dd844a55-c7b7-4c62-a943-6b5514d70572.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/15-59-31.052_mkngff/dd844a55-c7b7-4c62-a943-6b5514d70572.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/dd844a55-c7b7-4c62-a943-6b5514d70572/dd844a55-c7b7-4c62-a943-6b5514d70572.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/15-59-31.052_mkngff/dd844a55-c7b7-4c62-a943-6b5514d70572.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/dd844a55-c7b7-4c62-a943-6b5514d70572/dd844a55-c7b7-4c62-a943-6b5514d70572.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/15-59-31.052_mkngff/dd844a55-c7b7-4c62-a943-6b5514d70572.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/dd844a55-c7b7-4c62-a943-6b5514d70572/dd844a55-c7b7-4c62-a943-6b5514d70572.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/15-59-31.052_mkngff/dd844a55-c7b7-4c62-a943-6b5514d70572.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/dd844a55-c7b7-4c62-a943-6b5514d70572/dd844a55-c7b7-4c62-a943-6b5514d70572.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/15-59-31.052_mkngff/dd844a55-c7b7-4c62-a943-6b5514d70572.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/dd844a55-c7b7-4c62-a943-6b5514d70572/dd844a55-c7b7-4c62-a943-6b5514d70572.zarr/3/.zarray']
      ]::text[][]
    );
commit;

