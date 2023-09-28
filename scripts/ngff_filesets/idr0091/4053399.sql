UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/08-16-48.279_mkngff/7d987a2c-5319-4220-9c0c-af5963fdfc2e.zarr' where image in (select id from Image where fileset = 4053399);

begin;
    select mkngff_fileset(
      4053399,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/08-16-48.279_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/08-16-48.279_mkngff/7d987a2c-5319-4220-9c0c-af5963fdfc2e.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/08-16-48.279_mkngff/7d987a2c-5319-4220-9c0c-af5963fdfc2e.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/08-16-48.279_mkngff/7d987a2c-5319-4220-9c0c-af5963fdfc2e.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/08-16-48.279_mkngff/7d987a2c-5319-4220-9c0c-af5963fdfc2e.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/08-16-48.279_mkngff/7d987a2c-5319-4220-9c0c-af5963fdfc2e.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/08-16-48.279_mkngff/7d987a2c-5319-4220-9c0c-af5963fdfc2e.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

