UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/19-04-19.322_mkngff/0a1ff011-a78f-4b11-b8f5-c24ffd0972f6.zarr' where image in (select id from Image where fileset = 4053188);

begin;
    select mkngff_fileset(
      4053188,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/19-04-19.322_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/19-04-19.322_mkngff/0a1ff011-a78f-4b11-b8f5-c24ffd0972f6.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/19-04-19.322_mkngff/0a1ff011-a78f-4b11-b8f5-c24ffd0972f6.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/19-04-19.322_mkngff/0a1ff011-a78f-4b11-b8f5-c24ffd0972f6.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/19-04-19.322_mkngff/0a1ff011-a78f-4b11-b8f5-c24ffd0972f6.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/19-04-19.322_mkngff/0a1ff011-a78f-4b11-b8f5-c24ffd0972f6.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/19-04-19.322_mkngff/0a1ff011-a78f-4b11-b8f5-c24ffd0972f6.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

