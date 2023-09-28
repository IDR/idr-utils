UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/18-04-10.558_mkngff/2843785a-ff4a-49a9-be9b-4fa61c13c29e.zarr' where image in (select id from Image where fileset = 4053846);

begin;
    select mkngff_fileset(
      4053846,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/18-04-10.558_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/18-04-10.558_mkngff/2843785a-ff4a-49a9-be9b-4fa61c13c29e.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/18-04-10.558_mkngff/2843785a-ff4a-49a9-be9b-4fa61c13c29e.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/18-04-10.558_mkngff/2843785a-ff4a-49a9-be9b-4fa61c13c29e.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/18-04-10.558_mkngff/2843785a-ff4a-49a9-be9b-4fa61c13c29e.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/18-04-10.558_mkngff/2843785a-ff4a-49a9-be9b-4fa61c13c29e.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/18-04-10.558_mkngff/2843785a-ff4a-49a9-be9b-4fa61c13c29e.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

