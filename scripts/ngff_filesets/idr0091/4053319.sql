UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/23-20-11.893_mkngff/7614dade-48e6-4f76-ba0b-25ed69706974.zarr' where image in (select id from Image where fileset = 4053319);

begin;
    select mkngff_fileset(
      4053319,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/23-20-11.893_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/23-20-11.893_mkngff/7614dade-48e6-4f76-ba0b-25ed69706974.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/23-20-11.893_mkngff/7614dade-48e6-4f76-ba0b-25ed69706974.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/23-20-11.893_mkngff/7614dade-48e6-4f76-ba0b-25ed69706974.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/23-20-11.893_mkngff/7614dade-48e6-4f76-ba0b-25ed69706974.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/23-20-11.893_mkngff/7614dade-48e6-4f76-ba0b-25ed69706974.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/23-20-11.893_mkngff/7614dade-48e6-4f76-ba0b-25ed69706974.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

