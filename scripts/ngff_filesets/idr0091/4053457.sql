UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/11-38-18.315_mkngff/ffd8bfb6-d6c4-4721-8480-34bfc413ce1f.zarr' where image in (select id from Image where fileset = 4053457);

begin;
    select mkngff_fileset(
      4053457,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/11-38-18.315_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/11-38-18.315_mkngff/ffd8bfb6-d6c4-4721-8480-34bfc413ce1f.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/11-38-18.315_mkngff/ffd8bfb6-d6c4-4721-8480-34bfc413ce1f.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/11-38-18.315_mkngff/ffd8bfb6-d6c4-4721-8480-34bfc413ce1f.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/11-38-18.315_mkngff/ffd8bfb6-d6c4-4721-8480-34bfc413ce1f.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/11-38-18.315_mkngff/ffd8bfb6-d6c4-4721-8480-34bfc413ce1f.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/11-38-18.315_mkngff/ffd8bfb6-d6c4-4721-8480-34bfc413ce1f.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

