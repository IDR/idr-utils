UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/02/23-33-31.528_mkngff/70381358-d932-43fa-b652-d977af2a3f92.zarr' where image in (select id from Image where fileset = 4053321);

begin;
    select mkngff_fileset(
      4053321,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/02/23-33-31.528_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/02/23-33-31.528_mkngff/70381358-d932-43fa-b652-d977af2a3f92.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/02/23-33-31.528_mkngff/70381358-d932-43fa-b652-d977af2a3f92.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/02/23-33-31.528_mkngff/70381358-d932-43fa-b652-d977af2a3f92.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/02/23-33-31.528_mkngff/70381358-d932-43fa-b652-d977af2a3f92.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/02/23-33-31.528_mkngff/70381358-d932-43fa-b652-d977af2a3f92.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/02/23-33-31.528_mkngff/70381358-d932-43fa-b652-d977af2a3f92.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

