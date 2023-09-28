UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/23-44-16.033_mkngff/ce491b19-0fcf-4aa0-b911-c35afea54748.zarr' where image in (select id from Image where fileset = 4053323);

begin;
    select mkngff_fileset(
      4053323,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/23-44-16.033_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/23-44-16.033_mkngff/ce491b19-0fcf-4aa0-b911-c35afea54748.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/23-44-16.033_mkngff/ce491b19-0fcf-4aa0-b911-c35afea54748.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/23-44-16.033_mkngff/ce491b19-0fcf-4aa0-b911-c35afea54748.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/23-44-16.033_mkngff/ce491b19-0fcf-4aa0-b911-c35afea54748.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/23-44-16.033_mkngff/ce491b19-0fcf-4aa0-b911-c35afea54748.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/23-44-16.033_mkngff/ce491b19-0fcf-4aa0-b911-c35afea54748.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

