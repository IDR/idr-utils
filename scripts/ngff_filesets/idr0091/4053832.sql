UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/17-30-58.270_mkngff/7e8a2723-9d52-46f1-b7c6-7f176e201ae5.zarr' where image in (select id from Image where fileset = 4053832);

begin;
    select mkngff_fileset(
      4053832,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/17-30-58.270_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/17-30-58.270_mkngff/7e8a2723-9d52-46f1-b7c6-7f176e201ae5.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7e8a2723-9d52-46f1-b7c6-7f176e201ae5/7e8a2723-9d52-46f1-b7c6-7f176e201ae5.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/17-30-58.270_mkngff/7e8a2723-9d52-46f1-b7c6-7f176e201ae5.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7e8a2723-9d52-46f1-b7c6-7f176e201ae5/7e8a2723-9d52-46f1-b7c6-7f176e201ae5.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/17-30-58.270_mkngff/7e8a2723-9d52-46f1-b7c6-7f176e201ae5.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7e8a2723-9d52-46f1-b7c6-7f176e201ae5/7e8a2723-9d52-46f1-b7c6-7f176e201ae5.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/17-30-58.270_mkngff/7e8a2723-9d52-46f1-b7c6-7f176e201ae5.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7e8a2723-9d52-46f1-b7c6-7f176e201ae5/7e8a2723-9d52-46f1-b7c6-7f176e201ae5.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/17-30-58.270_mkngff/7e8a2723-9d52-46f1-b7c6-7f176e201ae5.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7e8a2723-9d52-46f1-b7c6-7f176e201ae5/7e8a2723-9d52-46f1-b7c6-7f176e201ae5.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/17-30-58.270_mkngff/7e8a2723-9d52-46f1-b7c6-7f176e201ae5.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7e8a2723-9d52-46f1-b7c6-7f176e201ae5/7e8a2723-9d52-46f1-b7c6-7f176e201ae5.zarr/3/.zarray']
      ]::text[][]
    );
commit;

