UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/05-43-00.200_mkngff/1ba21e9c-086b-4a7c-a21e-55a8bbb12ea7.zarr' where image in (select id from Image where fileset = 4053377);

begin;
    select mkngff_fileset(
      4053377,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/05-43-00.200_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/05-43-00.200_mkngff/1ba21e9c-086b-4a7c-a21e-55a8bbb12ea7.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/05-43-00.200_mkngff/1ba21e9c-086b-4a7c-a21e-55a8bbb12ea7.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/05-43-00.200_mkngff/1ba21e9c-086b-4a7c-a21e-55a8bbb12ea7.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/05-43-00.200_mkngff/1ba21e9c-086b-4a7c-a21e-55a8bbb12ea7.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/05-43-00.200_mkngff/1ba21e9c-086b-4a7c-a21e-55a8bbb12ea7.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/05-43-00.200_mkngff/1ba21e9c-086b-4a7c-a21e-55a8bbb12ea7.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

