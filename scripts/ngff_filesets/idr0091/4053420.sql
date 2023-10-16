UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/09-20-19.424_mkngff/ca55a20b-68b2-4ed8-b196-03c8c417a683.zarr' where image in (select id from Image where fileset = 4053420);

begin;
    select mkngff_fileset(
      4053420,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/09-20-19.424_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/09-20-19.424_mkngff/ca55a20b-68b2-4ed8-b196-03c8c417a683.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/ca55a20b-68b2-4ed8-b196-03c8c417a683/ca55a20b-68b2-4ed8-b196-03c8c417a683.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/09-20-19.424_mkngff/ca55a20b-68b2-4ed8-b196-03c8c417a683.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/ca55a20b-68b2-4ed8-b196-03c8c417a683/ca55a20b-68b2-4ed8-b196-03c8c417a683.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/09-20-19.424_mkngff/ca55a20b-68b2-4ed8-b196-03c8c417a683.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/ca55a20b-68b2-4ed8-b196-03c8c417a683/ca55a20b-68b2-4ed8-b196-03c8c417a683.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/09-20-19.424_mkngff/ca55a20b-68b2-4ed8-b196-03c8c417a683.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/ca55a20b-68b2-4ed8-b196-03c8c417a683/ca55a20b-68b2-4ed8-b196-03c8c417a683.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/09-20-19.424_mkngff/ca55a20b-68b2-4ed8-b196-03c8c417a683.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/ca55a20b-68b2-4ed8-b196-03c8c417a683/ca55a20b-68b2-4ed8-b196-03c8c417a683.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/09-20-19.424_mkngff/ca55a20b-68b2-4ed8-b196-03c8c417a683.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/ca55a20b-68b2-4ed8-b196-03c8c417a683/ca55a20b-68b2-4ed8-b196-03c8c417a683.zarr/3/.zarray']
      ]::text[][]
    );
commit;

