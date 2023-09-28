UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/10-32-54.401_mkngff/62834be8-9e57-4aea-a286-9079ff6be57f.zarr' where image in (select id from Image where fileset = 4053437);

begin;
    select mkngff_fileset(
      4053437,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/10-32-54.401_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/10-32-54.401_mkngff/62834be8-9e57-4aea-a286-9079ff6be57f.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/10-32-54.401_mkngff/62834be8-9e57-4aea-a286-9079ff6be57f.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/10-32-54.401_mkngff/62834be8-9e57-4aea-a286-9079ff6be57f.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/10-32-54.401_mkngff/62834be8-9e57-4aea-a286-9079ff6be57f.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/10-32-54.401_mkngff/62834be8-9e57-4aea-a286-9079ff6be57f.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/10-32-54.401_mkngff/62834be8-9e57-4aea-a286-9079ff6be57f.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

