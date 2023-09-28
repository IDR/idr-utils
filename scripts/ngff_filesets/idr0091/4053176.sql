UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/02/17-56-37.848_mkngff/9ff90bef-3694-4327-bb64-c6f1b39954aa.zarr' where image in (select id from Image where fileset = 4053176);

begin;
    select mkngff_fileset(
      4053176,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/02/17-56-37.848_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/02/17-56-37.848_mkngff/9ff90bef-3694-4327-bb64-c6f1b39954aa.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/02/17-56-37.848_mkngff/9ff90bef-3694-4327-bb64-c6f1b39954aa.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/02/17-56-37.848_mkngff/9ff90bef-3694-4327-bb64-c6f1b39954aa.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/02/17-56-37.848_mkngff/9ff90bef-3694-4327-bb64-c6f1b39954aa.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/02/17-56-37.848_mkngff/9ff90bef-3694-4327-bb64-c6f1b39954aa.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/02/17-56-37.848_mkngff/9ff90bef-3694-4327-bb64-c6f1b39954aa.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

