UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/12-45-55.193_mkngff/2259f189-4ef7-493a-8df7-53a164d975a3.zarr' where image in (select id from Image where fileset = 4053481);

begin;
    select mkngff_fileset(
      4053481,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/12-45-55.193_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/12-45-55.193_mkngff/2259f189-4ef7-493a-8df7-53a164d975a3.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/12-45-55.193_mkngff/2259f189-4ef7-493a-8df7-53a164d975a3.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/12-45-55.193_mkngff/2259f189-4ef7-493a-8df7-53a164d975a3.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/12-45-55.193_mkngff/2259f189-4ef7-493a-8df7-53a164d975a3.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/12-45-55.193_mkngff/2259f189-4ef7-493a-8df7-53a164d975a3.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/12-45-55.193_mkngff/2259f189-4ef7-493a-8df7-53a164d975a3.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;
