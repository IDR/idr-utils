UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/07-48-50.007_mkngff/6de67a9c-3e2d-42fe-81cd-3b595589d6ef.zarr' where image in (select id from Image where fileset = 4053395);

begin;
    select mkngff_fileset(
      4053395,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/07-48-50.007_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/07-48-50.007_mkngff/6de67a9c-3e2d-42fe-81cd-3b595589d6ef.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/6de67a9c-3e2d-42fe-81cd-3b595589d6ef/6de67a9c-3e2d-42fe-81cd-3b595589d6ef.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/07-48-50.007_mkngff/6de67a9c-3e2d-42fe-81cd-3b595589d6ef.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/6de67a9c-3e2d-42fe-81cd-3b595589d6ef/6de67a9c-3e2d-42fe-81cd-3b595589d6ef.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/07-48-50.007_mkngff/6de67a9c-3e2d-42fe-81cd-3b595589d6ef.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/6de67a9c-3e2d-42fe-81cd-3b595589d6ef/6de67a9c-3e2d-42fe-81cd-3b595589d6ef.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/07-48-50.007_mkngff/6de67a9c-3e2d-42fe-81cd-3b595589d6ef.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/6de67a9c-3e2d-42fe-81cd-3b595589d6ef/6de67a9c-3e2d-42fe-81cd-3b595589d6ef.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/07-48-50.007_mkngff/6de67a9c-3e2d-42fe-81cd-3b595589d6ef.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/6de67a9c-3e2d-42fe-81cd-3b595589d6ef/6de67a9c-3e2d-42fe-81cd-3b595589d6ef.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/07-48-50.007_mkngff/6de67a9c-3e2d-42fe-81cd-3b595589d6ef.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/6de67a9c-3e2d-42fe-81cd-3b595589d6ef/6de67a9c-3e2d-42fe-81cd-3b595589d6ef.zarr/3/.zarray']
      ]::text[][]
    );
commit;

