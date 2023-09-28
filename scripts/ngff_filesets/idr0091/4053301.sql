UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/21-39-40.015_mkngff/fd77edfe-3390-4e27-a31a-6254142874bb.zarr' where image in (select id from Image where fileset = 4053301);

begin;
    select mkngff_fileset(
      4053301,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/21-39-40.015_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/21-39-40.015_mkngff/fd77edfe-3390-4e27-a31a-6254142874bb.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/21-39-40.015_mkngff/fd77edfe-3390-4e27-a31a-6254142874bb.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/21-39-40.015_mkngff/fd77edfe-3390-4e27-a31a-6254142874bb.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/21-39-40.015_mkngff/fd77edfe-3390-4e27-a31a-6254142874bb.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/21-39-40.015_mkngff/fd77edfe-3390-4e27-a31a-6254142874bb.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/21-39-40.015_mkngff/fd77edfe-3390-4e27-a31a-6254142874bb.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

