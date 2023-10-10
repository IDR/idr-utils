UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/13-58-05.628_mkngff/e62ee29b-d638-4092-b078-d926f2637593.zarr' where image in (select id from Image where fileset = 4053494);

begin;
    select mkngff_fileset(
      4053494,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/13-58-05.628_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/13-58-05.628_mkngff/e62ee29b-d638-4092-b078-d926f2637593.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/13-58-05.628_mkngff/e62ee29b-d638-4092-b078-d926f2637593.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/13-58-05.628_mkngff/e62ee29b-d638-4092-b078-d926f2637593.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/13-58-05.628_mkngff/e62ee29b-d638-4092-b078-d926f2637593.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/13-58-05.628_mkngff/e62ee29b-d638-4092-b078-d926f2637593.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/13-58-05.628_mkngff/e62ee29b-d638-4092-b078-d926f2637593.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;
