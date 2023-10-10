UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/17-06-28.627_mkngff/e83d6c6a-9da2-4279-8f91-20b783099b1e.zarr' where image in (select id from Image where fileset = 4053167);

begin;
    select mkngff_fileset(
      4053167,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/17-06-28.627_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/17-06-28.627_mkngff/e83d6c6a-9da2-4279-8f91-20b783099b1e.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/17-06-28.627_mkngff/e83d6c6a-9da2-4279-8f91-20b783099b1e.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/17-06-28.627_mkngff/e83d6c6a-9da2-4279-8f91-20b783099b1e.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/17-06-28.627_mkngff/e83d6c6a-9da2-4279-8f91-20b783099b1e.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/17-06-28.627_mkngff/e83d6c6a-9da2-4279-8f91-20b783099b1e.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/17-06-28.627_mkngff/e83d6c6a-9da2-4279-8f91-20b783099b1e.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;
