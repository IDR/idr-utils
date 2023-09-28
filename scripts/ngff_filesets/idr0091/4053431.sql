UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/10-07-24.922_mkngff/57eb84b0-205a-48f3-b069-b876d80a3f2a.zarr' where image in (select id from Image where fileset = 4053431);

begin;
    select mkngff_fileset(
      4053431,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/10-07-24.922_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/10-07-24.922_mkngff/57eb84b0-205a-48f3-b069-b876d80a3f2a.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/10-07-24.922_mkngff/57eb84b0-205a-48f3-b069-b876d80a3f2a.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/10-07-24.922_mkngff/57eb84b0-205a-48f3-b069-b876d80a3f2a.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/10-07-24.922_mkngff/57eb84b0-205a-48f3-b069-b876d80a3f2a.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/10-07-24.922_mkngff/57eb84b0-205a-48f3-b069-b876d80a3f2a.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/10-07-24.922_mkngff/57eb84b0-205a-48f3-b069-b876d80a3f2a.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

