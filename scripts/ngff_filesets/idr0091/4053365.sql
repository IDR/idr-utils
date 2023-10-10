UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/04-09-30.129_mkngff/31af4b02-e7df-4e8d-b40a-0db78aee118f.zarr' where image in (select id from Image where fileset = 4053365);

begin;
    select mkngff_fileset(
      4053365,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/04-09-30.129_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/04-09-30.129_mkngff/31af4b02-e7df-4e8d-b40a-0db78aee118f.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/04-09-30.129_mkngff/31af4b02-e7df-4e8d-b40a-0db78aee118f.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/04-09-30.129_mkngff/31af4b02-e7df-4e8d-b40a-0db78aee118f.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/04-09-30.129_mkngff/31af4b02-e7df-4e8d-b40a-0db78aee118f.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/04-09-30.129_mkngff/31af4b02-e7df-4e8d-b40a-0db78aee118f.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/04-09-30.129_mkngff/31af4b02-e7df-4e8d-b40a-0db78aee118f.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;
