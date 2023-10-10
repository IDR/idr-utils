UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/14-43-15.289_mkngff/1135a79d-2324-46fc-9927-0e2dc4b54ac3.zarr' where image in (select id from Image where fileset = 4053502);

begin;
    select mkngff_fileset(
      4053502,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/14-43-15.289_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/14-43-15.289_mkngff/1135a79d-2324-46fc-9927-0e2dc4b54ac3.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/14-43-15.289_mkngff/1135a79d-2324-46fc-9927-0e2dc4b54ac3.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/14-43-15.289_mkngff/1135a79d-2324-46fc-9927-0e2dc4b54ac3.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/14-43-15.289_mkngff/1135a79d-2324-46fc-9927-0e2dc4b54ac3.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/14-43-15.289_mkngff/1135a79d-2324-46fc-9927-0e2dc4b54ac3.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/14-43-15.289_mkngff/1135a79d-2324-46fc-9927-0e2dc4b54ac3.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;
