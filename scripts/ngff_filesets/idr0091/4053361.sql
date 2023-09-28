UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/03-40-59.043_mkngff/3c05c37f-0b2d-4b59-84b6-0ae94b5cc3e9.zarr' where image in (select id from Image where fileset = 4053361);

begin;
    select mkngff_fileset(
      4053361,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/03-40-59.043_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/03-40-59.043_mkngff/3c05c37f-0b2d-4b59-84b6-0ae94b5cc3e9.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/03-40-59.043_mkngff/3c05c37f-0b2d-4b59-84b6-0ae94b5cc3e9.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/03-40-59.043_mkngff/3c05c37f-0b2d-4b59-84b6-0ae94b5cc3e9.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/03-40-59.043_mkngff/3c05c37f-0b2d-4b59-84b6-0ae94b5cc3e9.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/03-40-59.043_mkngff/3c05c37f-0b2d-4b59-84b6-0ae94b5cc3e9.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/03-40-59.043_mkngff/3c05c37f-0b2d-4b59-84b6-0ae94b5cc3e9.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

