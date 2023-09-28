UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/09-24-34.912_mkngff/f959ab63-3ad8-4cb0-a66e-d1915f8274c2.zarr' where image in (select id from Image where fileset = 4053421);

begin;
    select mkngff_fileset(
      4053421,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/09-24-34.912_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/09-24-34.912_mkngff/f959ab63-3ad8-4cb0-a66e-d1915f8274c2.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/09-24-34.912_mkngff/f959ab63-3ad8-4cb0-a66e-d1915f8274c2.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/09-24-34.912_mkngff/f959ab63-3ad8-4cb0-a66e-d1915f8274c2.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/09-24-34.912_mkngff/f959ab63-3ad8-4cb0-a66e-d1915f8274c2.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/09-24-34.912_mkngff/f959ab63-3ad8-4cb0-a66e-d1915f8274c2.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/09-24-34.912_mkngff/f959ab63-3ad8-4cb0-a66e-d1915f8274c2.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

