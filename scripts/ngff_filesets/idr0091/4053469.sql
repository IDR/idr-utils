UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/12-11-57.839_mkngff/56fb7a9b-3913-4d3d-9e03-bab19bfe3603.zarr' where image in (select id from Image where fileset = 4053469);

begin;
    select mkngff_fileset(
      4053469,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/12-11-57.839_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/12-11-57.839_mkngff/56fb7a9b-3913-4d3d-9e03-bab19bfe3603.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/12-11-57.839_mkngff/56fb7a9b-3913-4d3d-9e03-bab19bfe3603.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/12-11-57.839_mkngff/56fb7a9b-3913-4d3d-9e03-bab19bfe3603.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/12-11-57.839_mkngff/56fb7a9b-3913-4d3d-9e03-bab19bfe3603.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/12-11-57.839_mkngff/56fb7a9b-3913-4d3d-9e03-bab19bfe3603.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/12-11-57.839_mkngff/56fb7a9b-3913-4d3d-9e03-bab19bfe3603.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

