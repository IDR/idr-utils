UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/13-35-53.127_mkngff/2e51611d-1d06-43d2-a249-e6bf7b521231.zarr' where image in (select id from Image where fileset = 4053490);

begin;
    select mkngff_fileset(
      4053490,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/13-35-53.127_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/13-35-53.127_mkngff/2e51611d-1d06-43d2-a249-e6bf7b521231.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/13-35-53.127_mkngff/2e51611d-1d06-43d2-a249-e6bf7b521231.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/13-35-53.127_mkngff/2e51611d-1d06-43d2-a249-e6bf7b521231.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/13-35-53.127_mkngff/2e51611d-1d06-43d2-a249-e6bf7b521231.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/13-35-53.127_mkngff/2e51611d-1d06-43d2-a249-e6bf7b521231.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/13-35-53.127_mkngff/2e51611d-1d06-43d2-a249-e6bf7b521231.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

