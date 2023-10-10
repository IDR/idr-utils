UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/14-51-51.873_mkngff/4ae7771a-20ab-453a-ba15-418997a378d8.zarr' where image in (select id from Image where fileset = 4053142);

begin;
    select mkngff_fileset(
      4053142,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/14-51-51.873_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/14-51-51.873_mkngff/4ae7771a-20ab-453a-ba15-418997a378d8.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/14-51-51.873_mkngff/4ae7771a-20ab-453a-ba15-418997a378d8.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/14-51-51.873_mkngff/4ae7771a-20ab-453a-ba15-418997a378d8.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/14-51-51.873_mkngff/4ae7771a-20ab-453a-ba15-418997a378d8.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/14-51-51.873_mkngff/4ae7771a-20ab-453a-ba15-418997a378d8.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/14-51-51.873_mkngff/4ae7771a-20ab-453a-ba15-418997a378d8.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;
