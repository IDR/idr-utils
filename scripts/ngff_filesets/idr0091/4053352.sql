UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/02-39-35.637_mkngff/7015087e-5c68-43f8-b47b-fa528234d3e0.zarr' where image in (select id from Image where fileset = 4053352);

begin;
    select mkngff_fileset(
      4053352,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/02-39-35.637_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/02-39-35.637_mkngff/7015087e-5c68-43f8-b47b-fa528234d3e0.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/02-39-35.637_mkngff/7015087e-5c68-43f8-b47b-fa528234d3e0.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/02-39-35.637_mkngff/7015087e-5c68-43f8-b47b-fa528234d3e0.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/02-39-35.637_mkngff/7015087e-5c68-43f8-b47b-fa528234d3e0.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/02-39-35.637_mkngff/7015087e-5c68-43f8-b47b-fa528234d3e0.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/02-39-35.637_mkngff/7015087e-5c68-43f8-b47b-fa528234d3e0.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

