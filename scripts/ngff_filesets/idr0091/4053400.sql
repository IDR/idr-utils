UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/08-24-40.211_mkngff/db6fb92b-7788-45cd-9e8e-7a8e8446e01e.zarr' where image in (select id from Image where fileset = 4053400);

begin;
    select mkngff_fileset(
      4053400,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/08-24-40.211_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/08-24-40.211_mkngff/db6fb92b-7788-45cd-9e8e-7a8e8446e01e.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/db6fb92b-7788-45cd-9e8e-7a8e8446e01e/db6fb92b-7788-45cd-9e8e-7a8e8446e01e.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/08-24-40.211_mkngff/db6fb92b-7788-45cd-9e8e-7a8e8446e01e.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/db6fb92b-7788-45cd-9e8e-7a8e8446e01e/db6fb92b-7788-45cd-9e8e-7a8e8446e01e.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/08-24-40.211_mkngff/db6fb92b-7788-45cd-9e8e-7a8e8446e01e.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/db6fb92b-7788-45cd-9e8e-7a8e8446e01e/db6fb92b-7788-45cd-9e8e-7a8e8446e01e.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/08-24-40.211_mkngff/db6fb92b-7788-45cd-9e8e-7a8e8446e01e.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/db6fb92b-7788-45cd-9e8e-7a8e8446e01e/db6fb92b-7788-45cd-9e8e-7a8e8446e01e.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/08-24-40.211_mkngff/db6fb92b-7788-45cd-9e8e-7a8e8446e01e.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/db6fb92b-7788-45cd-9e8e-7a8e8446e01e/db6fb92b-7788-45cd-9e8e-7a8e8446e01e.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/08-24-40.211_mkngff/db6fb92b-7788-45cd-9e8e-7a8e8446e01e.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/db6fb92b-7788-45cd-9e8e-7a8e8446e01e/db6fb92b-7788-45cd-9e8e-7a8e8446e01e.zarr/3/.zarray']
      ]::text[][]
    );
commit;

