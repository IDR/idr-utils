UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/02/18-07-32.117_mkngff/3005fe6a-cf7a-4796-b030-9533d49804e5.zarr' where image in (select id from Image where fileset = 4053178);

begin;
    select mkngff_fileset(
      4053178,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/02/18-07-32.117_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/02/18-07-32.117_mkngff/3005fe6a-cf7a-4796-b030-9533d49804e5.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/02/18-07-32.117_mkngff/3005fe6a-cf7a-4796-b030-9533d49804e5.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/02/18-07-32.117_mkngff/3005fe6a-cf7a-4796-b030-9533d49804e5.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/02/18-07-32.117_mkngff/3005fe6a-cf7a-4796-b030-9533d49804e5.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/02/18-07-32.117_mkngff/3005fe6a-cf7a-4796-b030-9533d49804e5.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/02/18-07-32.117_mkngff/3005fe6a-cf7a-4796-b030-9533d49804e5.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

