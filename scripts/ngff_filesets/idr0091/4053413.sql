UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/08-48-27.779_mkngff/d464c2a8-2d83-4500-9f8e-5be123227dd7.zarr' where image in (select id from Image where fileset = 4053413);

begin;
    select mkngff_fileset(
      4053413,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/08-48-27.779_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/08-48-27.779_mkngff/d464c2a8-2d83-4500-9f8e-5be123227dd7.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/08-48-27.779_mkngff/d464c2a8-2d83-4500-9f8e-5be123227dd7.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/08-48-27.779_mkngff/d464c2a8-2d83-4500-9f8e-5be123227dd7.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/08-48-27.779_mkngff/d464c2a8-2d83-4500-9f8e-5be123227dd7.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/08-48-27.779_mkngff/d464c2a8-2d83-4500-9f8e-5be123227dd7.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/08-48-27.779_mkngff/d464c2a8-2d83-4500-9f8e-5be123227dd7.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

