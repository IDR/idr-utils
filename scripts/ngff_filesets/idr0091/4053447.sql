UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/11-09-34.261_mkngff/3e8e3b32-fe0a-457f-b492-46d5d748c812.zarr' where image in (select id from Image where fileset = 4053447);

begin;
    select mkngff_fileset(
      4053447,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/11-09-34.261_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/11-09-34.261_mkngff/3e8e3b32-fe0a-457f-b492-46d5d748c812.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/11-09-34.261_mkngff/3e8e3b32-fe0a-457f-b492-46d5d748c812.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/11-09-34.261_mkngff/3e8e3b32-fe0a-457f-b492-46d5d748c812.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/11-09-34.261_mkngff/3e8e3b32-fe0a-457f-b492-46d5d748c812.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/11-09-34.261_mkngff/3e8e3b32-fe0a-457f-b492-46d5d748c812.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/11-09-34.261_mkngff/3e8e3b32-fe0a-457f-b492-46d5d748c812.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

