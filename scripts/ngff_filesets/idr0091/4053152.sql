UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/02/15-43-39.699_mkngff/0a812f66-99dd-4280-bb59-7d04f7e75b39.zarr' where image in (select id from Image where fileset = 4053152);

begin;
    select mkngff_fileset(
      4053152,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/02/15-43-39.699_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/02/15-43-39.699_mkngff/0a812f66-99dd-4280-bb59-7d04f7e75b39.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/02/15-43-39.699_mkngff/0a812f66-99dd-4280-bb59-7d04f7e75b39.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/02/15-43-39.699_mkngff/0a812f66-99dd-4280-bb59-7d04f7e75b39.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/02/15-43-39.699_mkngff/0a812f66-99dd-4280-bb59-7d04f7e75b39.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/02/15-43-39.699_mkngff/0a812f66-99dd-4280-bb59-7d04f7e75b39.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/02/15-43-39.699_mkngff/0a812f66-99dd-4280-bb59-7d04f7e75b39.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

