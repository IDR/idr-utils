UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/16-11-13.247_mkngff/d3fc1861-c219-4355-99b6-27cd8295267b.zarr' where image in (select id from Image where fileset = 4053799);

begin;
    select mkngff_fileset(
      4053799,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/16-11-13.247_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/16-11-13.247_mkngff/d3fc1861-c219-4355-99b6-27cd8295267b.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/16-11-13.247_mkngff/d3fc1861-c219-4355-99b6-27cd8295267b.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/16-11-13.247_mkngff/d3fc1861-c219-4355-99b6-27cd8295267b.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/16-11-13.247_mkngff/d3fc1861-c219-4355-99b6-27cd8295267b.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/16-11-13.247_mkngff/d3fc1861-c219-4355-99b6-27cd8295267b.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/16-11-13.247_mkngff/d3fc1861-c219-4355-99b6-27cd8295267b.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

