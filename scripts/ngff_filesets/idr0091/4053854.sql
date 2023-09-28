UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/18-23-01.353_mkngff/b74db3d9-9074-43d5-8f9e-d149de0cbd02.zarr' where image in (select id from Image where fileset = 4053854);

begin;
    select mkngff_fileset(
      4053854,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/18-23-01.353_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/18-23-01.353_mkngff/b74db3d9-9074-43d5-8f9e-d149de0cbd02.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/18-23-01.353_mkngff/b74db3d9-9074-43d5-8f9e-d149de0cbd02.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/18-23-01.353_mkngff/b74db3d9-9074-43d5-8f9e-d149de0cbd02.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/18-23-01.353_mkngff/b74db3d9-9074-43d5-8f9e-d149de0cbd02.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/18-23-01.353_mkngff/b74db3d9-9074-43d5-8f9e-d149de0cbd02.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/18-23-01.353_mkngff/b74db3d9-9074-43d5-8f9e-d149de0cbd02.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

