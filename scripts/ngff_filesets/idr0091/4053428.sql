UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/09-54-41.529_mkngff/2bdef838-c0bf-48e7-be9c-d61f5111b329.zarr' where image in (select id from Image where fileset = 4053428);

begin;
    select mkngff_fileset(
      4053428,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/09-54-41.529_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/09-54-41.529_mkngff/2bdef838-c0bf-48e7-be9c-d61f5111b329.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/09-54-41.529_mkngff/2bdef838-c0bf-48e7-be9c-d61f5111b329.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/09-54-41.529_mkngff/2bdef838-c0bf-48e7-be9c-d61f5111b329.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/09-54-41.529_mkngff/2bdef838-c0bf-48e7-be9c-d61f5111b329.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/09-54-41.529_mkngff/2bdef838-c0bf-48e7-be9c-d61f5111b329.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/09-54-41.529_mkngff/2bdef838-c0bf-48e7-be9c-d61f5111b329.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

