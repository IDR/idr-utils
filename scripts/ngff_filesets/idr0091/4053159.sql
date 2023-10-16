UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/02/16-24-35.242_mkngff/a83316e7-a5f8-4041-b235-3af3f5fc2ecb.zarr' where image in (select id from Image where fileset = 4053159);

begin;
    select mkngff_fileset(
      4053159,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/02/16-24-35.242_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/02/16-24-35.242_mkngff/a83316e7-a5f8-4041-b235-3af3f5fc2ecb.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/a83316e7-a5f8-4041-b235-3af3f5fc2ecb/a83316e7-a5f8-4041-b235-3af3f5fc2ecb.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/02/16-24-35.242_mkngff/a83316e7-a5f8-4041-b235-3af3f5fc2ecb.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/a83316e7-a5f8-4041-b235-3af3f5fc2ecb/a83316e7-a5f8-4041-b235-3af3f5fc2ecb.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/02/16-24-35.242_mkngff/a83316e7-a5f8-4041-b235-3af3f5fc2ecb.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/a83316e7-a5f8-4041-b235-3af3f5fc2ecb/a83316e7-a5f8-4041-b235-3af3f5fc2ecb.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/02/16-24-35.242_mkngff/a83316e7-a5f8-4041-b235-3af3f5fc2ecb.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/a83316e7-a5f8-4041-b235-3af3f5fc2ecb/a83316e7-a5f8-4041-b235-3af3f5fc2ecb.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/02/16-24-35.242_mkngff/a83316e7-a5f8-4041-b235-3af3f5fc2ecb.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/a83316e7-a5f8-4041-b235-3af3f5fc2ecb/a83316e7-a5f8-4041-b235-3af3f5fc2ecb.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/02/16-24-35.242_mkngff/a83316e7-a5f8-4041-b235-3af3f5fc2ecb.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/a83316e7-a5f8-4041-b235-3af3f5fc2ecb/a83316e7-a5f8-4041-b235-3af3f5fc2ecb.zarr/3/.zarray']
      ]::text[][]
    );
commit;

