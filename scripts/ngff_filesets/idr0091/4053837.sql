UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/17-42-48.836_mkngff/bb423818-e307-43d4-8dff-52fe9c918f95.zarr' where image in (select id from Image where fileset = 4053837);

begin;
    select mkngff_fileset(
      4053837,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/17-42-48.836_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/17-42-48.836_mkngff/bb423818-e307-43d4-8dff-52fe9c918f95.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/bb423818-e307-43d4-8dff-52fe9c918f95/bb423818-e307-43d4-8dff-52fe9c918f95.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/17-42-48.836_mkngff/bb423818-e307-43d4-8dff-52fe9c918f95.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/bb423818-e307-43d4-8dff-52fe9c918f95/bb423818-e307-43d4-8dff-52fe9c918f95.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/17-42-48.836_mkngff/bb423818-e307-43d4-8dff-52fe9c918f95.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/bb423818-e307-43d4-8dff-52fe9c918f95/bb423818-e307-43d4-8dff-52fe9c918f95.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/17-42-48.836_mkngff/bb423818-e307-43d4-8dff-52fe9c918f95.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/bb423818-e307-43d4-8dff-52fe9c918f95/bb423818-e307-43d4-8dff-52fe9c918f95.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/17-42-48.836_mkngff/bb423818-e307-43d4-8dff-52fe9c918f95.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/bb423818-e307-43d4-8dff-52fe9c918f95/bb423818-e307-43d4-8dff-52fe9c918f95.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/17-42-48.836_mkngff/bb423818-e307-43d4-8dff-52fe9c918f95.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/bb423818-e307-43d4-8dff-52fe9c918f95/bb423818-e307-43d4-8dff-52fe9c918f95.zarr/3/.zarray']
      ]::text[][]
    );
commit;

