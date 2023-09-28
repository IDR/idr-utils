UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/18-06-33.820_mkngff/d5ad9ed3-ca5e-46fd-a597-57ea534f50d9.zarr' where image in (select id from Image where fileset = 4053847);

begin;
    select mkngff_fileset(
      4053847,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/18-06-33.820_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/18-06-33.820_mkngff/d5ad9ed3-ca5e-46fd-a597-57ea534f50d9.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/18-06-33.820_mkngff/d5ad9ed3-ca5e-46fd-a597-57ea534f50d9.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/18-06-33.820_mkngff/d5ad9ed3-ca5e-46fd-a597-57ea534f50d9.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/18-06-33.820_mkngff/d5ad9ed3-ca5e-46fd-a597-57ea534f50d9.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/18-06-33.820_mkngff/d5ad9ed3-ca5e-46fd-a597-57ea534f50d9.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/18-06-33.820_mkngff/d5ad9ed3-ca5e-46fd-a597-57ea534f50d9.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

