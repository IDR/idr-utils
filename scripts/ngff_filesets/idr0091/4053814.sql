UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/16-46-45.036_mkngff/209c6225-266a-45e0-8424-f5874b10ae27.zarr' where image in (select id from Image where fileset = 4053814);

begin;
    select mkngff_fileset(
      4053814,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/16-46-45.036_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/16-46-45.036_mkngff/209c6225-266a-45e0-8424-f5874b10ae27.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/16-46-45.036_mkngff/209c6225-266a-45e0-8424-f5874b10ae27.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/16-46-45.036_mkngff/209c6225-266a-45e0-8424-f5874b10ae27.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/16-46-45.036_mkngff/209c6225-266a-45e0-8424-f5874b10ae27.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/16-46-45.036_mkngff/209c6225-266a-45e0-8424-f5874b10ae27.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/16-46-45.036_mkngff/209c6225-266a-45e0-8424-f5874b10ae27.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

