UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/08-39-46.160_mkngff/b15406f6-8f06-4f83-bd8c-989c5d8e5104.zarr' where image in (select id from Image where fileset = 4053411);

begin;
    select mkngff_fileset(
      4053411,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/08-39-46.160_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/08-39-46.160_mkngff/b15406f6-8f06-4f83-bd8c-989c5d8e5104.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/08-39-46.160_mkngff/b15406f6-8f06-4f83-bd8c-989c5d8e5104.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/08-39-46.160_mkngff/b15406f6-8f06-4f83-bd8c-989c5d8e5104.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/08-39-46.160_mkngff/b15406f6-8f06-4f83-bd8c-989c5d8e5104.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/08-39-46.160_mkngff/b15406f6-8f06-4f83-bd8c-989c5d8e5104.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/08-39-46.160_mkngff/b15406f6-8f06-4f83-bd8c-989c5d8e5104.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

