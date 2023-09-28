UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/05-49-58.992_mkngff/c4dfc441-5b4b-4141-a58e-ca195d0ed70d.zarr' where image in (select id from Image where fileset = 4053378);

begin;
    select mkngff_fileset(
      4053378,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/05-49-58.992_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/05-49-58.992_mkngff/c4dfc441-5b4b-4141-a58e-ca195d0ed70d.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/05-49-58.992_mkngff/c4dfc441-5b4b-4141-a58e-ca195d0ed70d.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/05-49-58.992_mkngff/c4dfc441-5b4b-4141-a58e-ca195d0ed70d.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/05-49-58.992_mkngff/c4dfc441-5b4b-4141-a58e-ca195d0ed70d.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/05-49-58.992_mkngff/c4dfc441-5b4b-4141-a58e-ca195d0ed70d.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/05-49-58.992_mkngff/c4dfc441-5b4b-4141-a58e-ca195d0ed70d.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

