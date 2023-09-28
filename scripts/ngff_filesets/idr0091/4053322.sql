UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/23-38-54.761_mkngff/d871a94f-729e-4ed4-a25d-c1231780fa8b.zarr' where image in (select id from Image where fileset = 4053322);

begin;
    select mkngff_fileset(
      4053322,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/23-38-54.761_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/23-38-54.761_mkngff/d871a94f-729e-4ed4-a25d-c1231780fa8b.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/23-38-54.761_mkngff/d871a94f-729e-4ed4-a25d-c1231780fa8b.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/23-38-54.761_mkngff/d871a94f-729e-4ed4-a25d-c1231780fa8b.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/23-38-54.761_mkngff/d871a94f-729e-4ed4-a25d-c1231780fa8b.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/23-38-54.761_mkngff/d871a94f-729e-4ed4-a25d-c1231780fa8b.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/23-38-54.761_mkngff/d871a94f-729e-4ed4-a25d-c1231780fa8b.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

