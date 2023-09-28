UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/18-41-53.326_mkngff/c58b6007-2690-425e-9233-6352bcbb2fa2.zarr' where image in (select id from Image where fileset = 4053184);

begin;
    select mkngff_fileset(
      4053184,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/18-41-53.326_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/18-41-53.326_mkngff/c58b6007-2690-425e-9233-6352bcbb2fa2.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/18-41-53.326_mkngff/c58b6007-2690-425e-9233-6352bcbb2fa2.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/18-41-53.326_mkngff/c58b6007-2690-425e-9233-6352bcbb2fa2.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/18-41-53.326_mkngff/c58b6007-2690-425e-9233-6352bcbb2fa2.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/18-41-53.326_mkngff/c58b6007-2690-425e-9233-6352bcbb2fa2.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/18-41-53.326_mkngff/c58b6007-2690-425e-9233-6352bcbb2fa2.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

