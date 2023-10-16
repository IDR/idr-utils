UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/02-21-15.332_mkngff/81eece0e-fad8-4c5a-81fc-0f2672e69969.zarr' where image in (select id from Image where fileset = 4053349);

begin;
    select mkngff_fileset(
      4053349,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/02-21-15.332_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/02-21-15.332_mkngff/81eece0e-fad8-4c5a-81fc-0f2672e69969.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/81eece0e-fad8-4c5a-81fc-0f2672e69969/81eece0e-fad8-4c5a-81fc-0f2672e69969.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/02-21-15.332_mkngff/81eece0e-fad8-4c5a-81fc-0f2672e69969.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/81eece0e-fad8-4c5a-81fc-0f2672e69969/81eece0e-fad8-4c5a-81fc-0f2672e69969.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/02-21-15.332_mkngff/81eece0e-fad8-4c5a-81fc-0f2672e69969.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/81eece0e-fad8-4c5a-81fc-0f2672e69969/81eece0e-fad8-4c5a-81fc-0f2672e69969.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/02-21-15.332_mkngff/81eece0e-fad8-4c5a-81fc-0f2672e69969.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/81eece0e-fad8-4c5a-81fc-0f2672e69969/81eece0e-fad8-4c5a-81fc-0f2672e69969.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/02-21-15.332_mkngff/81eece0e-fad8-4c5a-81fc-0f2672e69969.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/81eece0e-fad8-4c5a-81fc-0f2672e69969/81eece0e-fad8-4c5a-81fc-0f2672e69969.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/02-21-15.332_mkngff/81eece0e-fad8-4c5a-81fc-0f2672e69969.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/81eece0e-fad8-4c5a-81fc-0f2672e69969/81eece0e-fad8-4c5a-81fc-0f2672e69969.zarr/3/.zarray']
      ]::text[][]
    );
commit;

