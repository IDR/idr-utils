UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/12-41-01.474_mkngff/dc673957-1af8-4e72-aae9-82cfdc6a2322.zarr' where image in (select id from Image where fileset = 4053479);

begin;
    select mkngff_fileset(
      4053479,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/12-41-01.474_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/12-41-01.474_mkngff/dc673957-1af8-4e72-aae9-82cfdc6a2322.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/12-41-01.474_mkngff/dc673957-1af8-4e72-aae9-82cfdc6a2322.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/12-41-01.474_mkngff/dc673957-1af8-4e72-aae9-82cfdc6a2322.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/12-41-01.474_mkngff/dc673957-1af8-4e72-aae9-82cfdc6a2322.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/12-41-01.474_mkngff/dc673957-1af8-4e72-aae9-82cfdc6a2322.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/12-41-01.474_mkngff/dc673957-1af8-4e72-aae9-82cfdc6a2322.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

