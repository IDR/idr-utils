UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/02/15-22-37.978_mkngff/9c285934-75d8-4703-ba96-d544232178ee.zarr' where image in (select id from Image where fileset = 4053148);

begin;
    select mkngff_fileset(
      4053148,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/02/15-22-37.978_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/02/15-22-37.978_mkngff/9c285934-75d8-4703-ba96-d544232178ee.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/9c285934-75d8-4703-ba96-d544232178ee/9c285934-75d8-4703-ba96-d544232178ee.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/02/15-22-37.978_mkngff/9c285934-75d8-4703-ba96-d544232178ee.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/9c285934-75d8-4703-ba96-d544232178ee/9c285934-75d8-4703-ba96-d544232178ee.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/02/15-22-37.978_mkngff/9c285934-75d8-4703-ba96-d544232178ee.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/9c285934-75d8-4703-ba96-d544232178ee/9c285934-75d8-4703-ba96-d544232178ee.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/02/15-22-37.978_mkngff/9c285934-75d8-4703-ba96-d544232178ee.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/9c285934-75d8-4703-ba96-d544232178ee/9c285934-75d8-4703-ba96-d544232178ee.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/02/15-22-37.978_mkngff/9c285934-75d8-4703-ba96-d544232178ee.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/9c285934-75d8-4703-ba96-d544232178ee/9c285934-75d8-4703-ba96-d544232178ee.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/02/15-22-37.978_mkngff/9c285934-75d8-4703-ba96-d544232178ee.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/9c285934-75d8-4703-ba96-d544232178ee/9c285934-75d8-4703-ba96-d544232178ee.zarr/3/.zarray']
      ]::text[][]
    );
commit;

