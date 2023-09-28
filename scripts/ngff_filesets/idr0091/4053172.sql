UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/02/17-34-18.898_mkngff/9cb6befd-6776-4340-beb3-5319e212a589.zarr' where image in (select id from Image where fileset = 4053172);

begin;
    select mkngff_fileset(
      4053172,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/02/17-34-18.898_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/02/17-34-18.898_mkngff/9cb6befd-6776-4340-beb3-5319e212a589.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/02/17-34-18.898_mkngff/9cb6befd-6776-4340-beb3-5319e212a589.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/02/17-34-18.898_mkngff/9cb6befd-6776-4340-beb3-5319e212a589.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/02/17-34-18.898_mkngff/9cb6befd-6776-4340-beb3-5319e212a589.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/02/17-34-18.898_mkngff/9cb6befd-6776-4340-beb3-5319e212a589.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/02/17-34-18.898_mkngff/9cb6befd-6776-4340-beb3-5319e212a589.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

