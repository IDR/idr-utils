UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/18-20-29.670_mkngff/fe062bd6-d24f-4236-a7cc-edecb4372c41.zarr' where image in (select id from Image where fileset = 4053853);

begin;
    select mkngff_fileset(
      4053853,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/18-20-29.670_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/18-20-29.670_mkngff/fe062bd6-d24f-4236-a7cc-edecb4372c41.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/fe062bd6-d24f-4236-a7cc-edecb4372c41/fe062bd6-d24f-4236-a7cc-edecb4372c41.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/18-20-29.670_mkngff/fe062bd6-d24f-4236-a7cc-edecb4372c41.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/fe062bd6-d24f-4236-a7cc-edecb4372c41/fe062bd6-d24f-4236-a7cc-edecb4372c41.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/18-20-29.670_mkngff/fe062bd6-d24f-4236-a7cc-edecb4372c41.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/fe062bd6-d24f-4236-a7cc-edecb4372c41/fe062bd6-d24f-4236-a7cc-edecb4372c41.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/18-20-29.670_mkngff/fe062bd6-d24f-4236-a7cc-edecb4372c41.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/fe062bd6-d24f-4236-a7cc-edecb4372c41/fe062bd6-d24f-4236-a7cc-edecb4372c41.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/18-20-29.670_mkngff/fe062bd6-d24f-4236-a7cc-edecb4372c41.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/fe062bd6-d24f-4236-a7cc-edecb4372c41/fe062bd6-d24f-4236-a7cc-edecb4372c41.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/18-20-29.670_mkngff/fe062bd6-d24f-4236-a7cc-edecb4372c41.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/fe062bd6-d24f-4236-a7cc-edecb4372c41/fe062bd6-d24f-4236-a7cc-edecb4372c41.zarr/3/.zarray']
      ]::text[][]
    );
commit;

