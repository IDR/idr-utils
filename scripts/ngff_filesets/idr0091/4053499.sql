UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/14-25-57.022_mkngff/053569d5-6ca3-40ec-a1f0-ba163109cc0f.zarr' where image in (select id from Image where fileset = 4053499);

begin;
    select mkngff_fileset(
      4053499,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/14-25-57.022_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/14-25-57.022_mkngff/053569d5-6ca3-40ec-a1f0-ba163109cc0f.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/14-25-57.022_mkngff/053569d5-6ca3-40ec-a1f0-ba163109cc0f.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/14-25-57.022_mkngff/053569d5-6ca3-40ec-a1f0-ba163109cc0f.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/14-25-57.022_mkngff/053569d5-6ca3-40ec-a1f0-ba163109cc0f.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/14-25-57.022_mkngff/053569d5-6ca3-40ec-a1f0-ba163109cc0f.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/14-25-57.022_mkngff/053569d5-6ca3-40ec-a1f0-ba163109cc0f.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

