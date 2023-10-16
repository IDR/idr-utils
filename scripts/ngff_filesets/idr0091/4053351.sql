UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/02-33-13.995_mkngff/a26c91f3-102b-4d54-ae9e-6cb2bdf1c33e.zarr' where image in (select id from Image where fileset = 4053351);

begin;
    select mkngff_fileset(
      4053351,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/02-33-13.995_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/02-33-13.995_mkngff/a26c91f3-102b-4d54-ae9e-6cb2bdf1c33e.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/a26c91f3-102b-4d54-ae9e-6cb2bdf1c33e/a26c91f3-102b-4d54-ae9e-6cb2bdf1c33e.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/02-33-13.995_mkngff/a26c91f3-102b-4d54-ae9e-6cb2bdf1c33e.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/a26c91f3-102b-4d54-ae9e-6cb2bdf1c33e/a26c91f3-102b-4d54-ae9e-6cb2bdf1c33e.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/02-33-13.995_mkngff/a26c91f3-102b-4d54-ae9e-6cb2bdf1c33e.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/a26c91f3-102b-4d54-ae9e-6cb2bdf1c33e/a26c91f3-102b-4d54-ae9e-6cb2bdf1c33e.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/02-33-13.995_mkngff/a26c91f3-102b-4d54-ae9e-6cb2bdf1c33e.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/a26c91f3-102b-4d54-ae9e-6cb2bdf1c33e/a26c91f3-102b-4d54-ae9e-6cb2bdf1c33e.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/02-33-13.995_mkngff/a26c91f3-102b-4d54-ae9e-6cb2bdf1c33e.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/a26c91f3-102b-4d54-ae9e-6cb2bdf1c33e/a26c91f3-102b-4d54-ae9e-6cb2bdf1c33e.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/02-33-13.995_mkngff/a26c91f3-102b-4d54-ae9e-6cb2bdf1c33e.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/a26c91f3-102b-4d54-ae9e-6cb2bdf1c33e/a26c91f3-102b-4d54-ae9e-6cb2bdf1c33e.zarr/3/.zarray']
      ]::text[][]
    );
commit;

