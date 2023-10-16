UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/02-53-05.128_mkngff/752eac7a-c29d-44f3-949f-22abd6fd4f62.zarr' where image in (select id from Image where fileset = 4053354);

begin;
    select mkngff_fileset(
      4053354,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/02-53-05.128_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/02-53-05.128_mkngff/752eac7a-c29d-44f3-949f-22abd6fd4f62.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/752eac7a-c29d-44f3-949f-22abd6fd4f62/752eac7a-c29d-44f3-949f-22abd6fd4f62.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/02-53-05.128_mkngff/752eac7a-c29d-44f3-949f-22abd6fd4f62.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/752eac7a-c29d-44f3-949f-22abd6fd4f62/752eac7a-c29d-44f3-949f-22abd6fd4f62.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/02-53-05.128_mkngff/752eac7a-c29d-44f3-949f-22abd6fd4f62.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/752eac7a-c29d-44f3-949f-22abd6fd4f62/752eac7a-c29d-44f3-949f-22abd6fd4f62.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/02-53-05.128_mkngff/752eac7a-c29d-44f3-949f-22abd6fd4f62.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/752eac7a-c29d-44f3-949f-22abd6fd4f62/752eac7a-c29d-44f3-949f-22abd6fd4f62.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/02-53-05.128_mkngff/752eac7a-c29d-44f3-949f-22abd6fd4f62.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/752eac7a-c29d-44f3-949f-22abd6fd4f62/752eac7a-c29d-44f3-949f-22abd6fd4f62.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/02-53-05.128_mkngff/752eac7a-c29d-44f3-949f-22abd6fd4f62.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/752eac7a-c29d-44f3-949f-22abd6fd4f62/752eac7a-c29d-44f3-949f-22abd6fd4f62.zarr/3/.zarray']
      ]::text[][]
    );
commit;

