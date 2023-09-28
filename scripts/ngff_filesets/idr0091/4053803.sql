UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/16-20-45.887_mkngff/dcdb25ae-2af0-471d-b7d3-cfdeabf3dbef.zarr' where image in (select id from Image where fileset = 4053803);

begin;
    select mkngff_fileset(
      4053803,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/16-20-45.887_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/16-20-45.887_mkngff/dcdb25ae-2af0-471d-b7d3-cfdeabf3dbef.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/16-20-45.887_mkngff/dcdb25ae-2af0-471d-b7d3-cfdeabf3dbef.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/16-20-45.887_mkngff/dcdb25ae-2af0-471d-b7d3-cfdeabf3dbef.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/16-20-45.887_mkngff/dcdb25ae-2af0-471d-b7d3-cfdeabf3dbef.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/16-20-45.887_mkngff/dcdb25ae-2af0-471d-b7d3-cfdeabf3dbef.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/16-20-45.887_mkngff/dcdb25ae-2af0-471d-b7d3-cfdeabf3dbef.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

