UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/16-06-40.516_mkngff/f9867739-5555-4619-9898-179772cad62b.zarr' where image in (select id from Image where fileset = 4053156);

begin;
    select mkngff_fileset(
      4053156,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/16-06-40.516_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/16-06-40.516_mkngff/f9867739-5555-4619-9898-179772cad62b.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/16-06-40.516_mkngff/f9867739-5555-4619-9898-179772cad62b.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/16-06-40.516_mkngff/f9867739-5555-4619-9898-179772cad62b.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/16-06-40.516_mkngff/f9867739-5555-4619-9898-179772cad62b.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/16-06-40.516_mkngff/f9867739-5555-4619-9898-179772cad62b.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/16-06-40.516_mkngff/f9867739-5555-4619-9898-179772cad62b.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;
