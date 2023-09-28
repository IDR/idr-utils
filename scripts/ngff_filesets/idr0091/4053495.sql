UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/14-03-43.588_mkngff/983f06d6-4678-4ea8-9b8d-1d605386d89b.zarr' where image in (select id from Image where fileset = 4053495);

begin;
    select mkngff_fileset(
      4053495,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/14-03-43.588_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/14-03-43.588_mkngff/983f06d6-4678-4ea8-9b8d-1d605386d89b.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/14-03-43.588_mkngff/983f06d6-4678-4ea8-9b8d-1d605386d89b.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/14-03-43.588_mkngff/983f06d6-4678-4ea8-9b8d-1d605386d89b.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/14-03-43.588_mkngff/983f06d6-4678-4ea8-9b8d-1d605386d89b.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/14-03-43.588_mkngff/983f06d6-4678-4ea8-9b8d-1d605386d89b.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/14-03-43.588_mkngff/983f06d6-4678-4ea8-9b8d-1d605386d89b.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

