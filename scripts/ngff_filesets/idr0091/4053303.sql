UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/02/21-51-36.969_mkngff/83dc8cd8-0827-4df6-acd9-06d514727ca3.zarr' where image in (select id from Image where fileset = 4053303);

begin;
    select mkngff_fileset(
      4053303,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/02/21-51-36.969_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/02/21-51-36.969_mkngff/83dc8cd8-0827-4df6-acd9-06d514727ca3.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/02/21-51-36.969_mkngff/83dc8cd8-0827-4df6-acd9-06d514727ca3.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/02/21-51-36.969_mkngff/83dc8cd8-0827-4df6-acd9-06d514727ca3.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/02/21-51-36.969_mkngff/83dc8cd8-0827-4df6-acd9-06d514727ca3.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/02/21-51-36.969_mkngff/83dc8cd8-0827-4df6-acd9-06d514727ca3.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/02/21-51-36.969_mkngff/83dc8cd8-0827-4df6-acd9-06d514727ca3.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

