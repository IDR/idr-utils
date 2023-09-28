UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/15-02-19.393_mkngff/0c17cfda-6727-401f-8bdf-f0a9981403b6.zarr' where image in (select id from Image where fileset = 4053144);

begin;
    select mkngff_fileset(
      4053144,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/15-02-19.393_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/15-02-19.393_mkngff/0c17cfda-6727-401f-8bdf-f0a9981403b6.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/15-02-19.393_mkngff/0c17cfda-6727-401f-8bdf-f0a9981403b6.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/15-02-19.393_mkngff/0c17cfda-6727-401f-8bdf-f0a9981403b6.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/15-02-19.393_mkngff/0c17cfda-6727-401f-8bdf-f0a9981403b6.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/15-02-19.393_mkngff/0c17cfda-6727-401f-8bdf-f0a9981403b6.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/15-02-19.393_mkngff/0c17cfda-6727-401f-8bdf-f0a9981403b6.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

