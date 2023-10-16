UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/02/18-19-48.580_mkngff/386ec41c-01ee-467c-bdd1-2196b8875684.zarr' where image in (select id from Image where fileset = 4053180);

begin;
    select mkngff_fileset(
      4053180,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/02/18-19-48.580_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/02/18-19-48.580_mkngff/386ec41c-01ee-467c-bdd1-2196b8875684.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/386ec41c-01ee-467c-bdd1-2196b8875684/386ec41c-01ee-467c-bdd1-2196b8875684.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/02/18-19-48.580_mkngff/386ec41c-01ee-467c-bdd1-2196b8875684.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/386ec41c-01ee-467c-bdd1-2196b8875684/386ec41c-01ee-467c-bdd1-2196b8875684.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/02/18-19-48.580_mkngff/386ec41c-01ee-467c-bdd1-2196b8875684.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/386ec41c-01ee-467c-bdd1-2196b8875684/386ec41c-01ee-467c-bdd1-2196b8875684.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/02/18-19-48.580_mkngff/386ec41c-01ee-467c-bdd1-2196b8875684.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/386ec41c-01ee-467c-bdd1-2196b8875684/386ec41c-01ee-467c-bdd1-2196b8875684.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/02/18-19-48.580_mkngff/386ec41c-01ee-467c-bdd1-2196b8875684.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/386ec41c-01ee-467c-bdd1-2196b8875684/386ec41c-01ee-467c-bdd1-2196b8875684.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/02/18-19-48.580_mkngff/386ec41c-01ee-467c-bdd1-2196b8875684.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/386ec41c-01ee-467c-bdd1-2196b8875684/386ec41c-01ee-467c-bdd1-2196b8875684.zarr/3/.zarray']
      ]::text[][]
    );
commit;

