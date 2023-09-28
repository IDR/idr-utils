UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/02/18-19-48.580_mkngff/386ec41c-01ee-467c-bdd1-2196b8875684.zarr' where image in (select id from Image where fileset = 4053180);

begin;
    select mkngff_fileset(
      4053180,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/02/18-19-48.580_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/02/18-19-48.580_mkngff/386ec41c-01ee-467c-bdd1-2196b8875684.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/02/18-19-48.580_mkngff/386ec41c-01ee-467c-bdd1-2196b8875684.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/02/18-19-48.580_mkngff/386ec41c-01ee-467c-bdd1-2196b8875684.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/02/18-19-48.580_mkngff/386ec41c-01ee-467c-bdd1-2196b8875684.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/02/18-19-48.580_mkngff/386ec41c-01ee-467c-bdd1-2196b8875684.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/02/18-19-48.580_mkngff/386ec41c-01ee-467c-bdd1-2196b8875684.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

