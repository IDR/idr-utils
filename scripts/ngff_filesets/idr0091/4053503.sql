UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/14-48-49.407_mkngff/e2aaaa23-f848-4e9b-8827-3a147481d353.zarr' where image in (select id from Image where fileset = 4053503);

begin;
    select mkngff_fileset(
      4053503,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/14-48-49.407_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/14-48-49.407_mkngff/e2aaaa23-f848-4e9b-8827-3a147481d353.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e2aaaa23-f848-4e9b-8827-3a147481d353/e2aaaa23-f848-4e9b-8827-3a147481d353.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/14-48-49.407_mkngff/e2aaaa23-f848-4e9b-8827-3a147481d353.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e2aaaa23-f848-4e9b-8827-3a147481d353/e2aaaa23-f848-4e9b-8827-3a147481d353.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/14-48-49.407_mkngff/e2aaaa23-f848-4e9b-8827-3a147481d353.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e2aaaa23-f848-4e9b-8827-3a147481d353/e2aaaa23-f848-4e9b-8827-3a147481d353.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/14-48-49.407_mkngff/e2aaaa23-f848-4e9b-8827-3a147481d353.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e2aaaa23-f848-4e9b-8827-3a147481d353/e2aaaa23-f848-4e9b-8827-3a147481d353.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/14-48-49.407_mkngff/e2aaaa23-f848-4e9b-8827-3a147481d353.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e2aaaa23-f848-4e9b-8827-3a147481d353/e2aaaa23-f848-4e9b-8827-3a147481d353.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/14-48-49.407_mkngff/e2aaaa23-f848-4e9b-8827-3a147481d353.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e2aaaa23-f848-4e9b-8827-3a147481d353/e2aaaa23-f848-4e9b-8827-3a147481d353.zarr/3/.zarray']
      ]::text[][]
    );
commit;

