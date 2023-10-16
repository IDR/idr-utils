UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/10-15-58.155_mkngff/6a72c493-7efd-405e-81a9-0f0df4083660.zarr' where image in (select id from Image where fileset = 4053433);

begin;
    select mkngff_fileset(
      4053433,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/10-15-58.155_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/10-15-58.155_mkngff/6a72c493-7efd-405e-81a9-0f0df4083660.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/6a72c493-7efd-405e-81a9-0f0df4083660/6a72c493-7efd-405e-81a9-0f0df4083660.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/10-15-58.155_mkngff/6a72c493-7efd-405e-81a9-0f0df4083660.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/6a72c493-7efd-405e-81a9-0f0df4083660/6a72c493-7efd-405e-81a9-0f0df4083660.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/10-15-58.155_mkngff/6a72c493-7efd-405e-81a9-0f0df4083660.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/6a72c493-7efd-405e-81a9-0f0df4083660/6a72c493-7efd-405e-81a9-0f0df4083660.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/10-15-58.155_mkngff/6a72c493-7efd-405e-81a9-0f0df4083660.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/6a72c493-7efd-405e-81a9-0f0df4083660/6a72c493-7efd-405e-81a9-0f0df4083660.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/10-15-58.155_mkngff/6a72c493-7efd-405e-81a9-0f0df4083660.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/6a72c493-7efd-405e-81a9-0f0df4083660/6a72c493-7efd-405e-81a9-0f0df4083660.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/10-15-58.155_mkngff/6a72c493-7efd-405e-81a9-0f0df4083660.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/6a72c493-7efd-405e-81a9-0f0df4083660/6a72c493-7efd-405e-81a9-0f0df4083660.zarr/3/.zarray']
      ]::text[][]
    );
commit;

