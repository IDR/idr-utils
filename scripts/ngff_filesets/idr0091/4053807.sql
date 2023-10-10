UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/16-30-36.728_mkngff/d02677dd-5dc9-45c3-a8d5-96f309f972b9.zarr' where image in (select id from Image where fileset = 4053807);

begin;
    select mkngff_fileset(
      4053807,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/16-30-36.728_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/16-30-36.728_mkngff/d02677dd-5dc9-45c3-a8d5-96f309f972b9.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/16-30-36.728_mkngff/d02677dd-5dc9-45c3-a8d5-96f309f972b9.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/16-30-36.728_mkngff/d02677dd-5dc9-45c3-a8d5-96f309f972b9.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/16-30-36.728_mkngff/d02677dd-5dc9-45c3-a8d5-96f309f972b9.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/16-30-36.728_mkngff/d02677dd-5dc9-45c3-a8d5-96f309f972b9.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/16-30-36.728_mkngff/d02677dd-5dc9-45c3-a8d5-96f309f972b9.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;
