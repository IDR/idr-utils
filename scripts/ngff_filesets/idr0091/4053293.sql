UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/02/20-54-35.702_mkngff/72ff746f-443f-4b6b-824a-1b1c66d7f655.zarr' where image in (select id from Image where fileset = 4053293);

begin;
    select mkngff_fileset(
      4053293,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/02/20-54-35.702_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/02/20-54-35.702_mkngff/72ff746f-443f-4b6b-824a-1b1c66d7f655.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/02/20-54-35.702_mkngff/72ff746f-443f-4b6b-824a-1b1c66d7f655.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/02/20-54-35.702_mkngff/72ff746f-443f-4b6b-824a-1b1c66d7f655.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/02/20-54-35.702_mkngff/72ff746f-443f-4b6b-824a-1b1c66d7f655.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/02/20-54-35.702_mkngff/72ff746f-443f-4b6b-824a-1b1c66d7f655.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/02/20-54-35.702_mkngff/72ff746f-443f-4b6b-824a-1b1c66d7f655.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

