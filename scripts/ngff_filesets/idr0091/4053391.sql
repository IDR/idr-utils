UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/07-21-20.284_mkngff/dcd49611-9590-439a-8724-9d6d5726f929.zarr' where image in (select id from Image where fileset = 4053391);

begin;
    select mkngff_fileset(
      4053391,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/07-21-20.284_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/07-21-20.284_mkngff/dcd49611-9590-439a-8724-9d6d5726f929.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/07-21-20.284_mkngff/dcd49611-9590-439a-8724-9d6d5726f929.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/07-21-20.284_mkngff/dcd49611-9590-439a-8724-9d6d5726f929.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/07-21-20.284_mkngff/dcd49611-9590-439a-8724-9d6d5726f929.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/07-21-20.284_mkngff/dcd49611-9590-439a-8724-9d6d5726f929.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/07-21-20.284_mkngff/dcd49611-9590-439a-8724-9d6d5726f929.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

