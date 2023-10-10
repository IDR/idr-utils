UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/06-25-49.733_mkngff/3d8c5a1f-236f-425c-b177-3212e82360dc.zarr' where image in (select id from Image where fileset = 4053383);

begin;
    select mkngff_fileset(
      4053383,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/06-25-49.733_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/06-25-49.733_mkngff/3d8c5a1f-236f-425c-b177-3212e82360dc.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/06-25-49.733_mkngff/3d8c5a1f-236f-425c-b177-3212e82360dc.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/06-25-49.733_mkngff/3d8c5a1f-236f-425c-b177-3212e82360dc.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/06-25-49.733_mkngff/3d8c5a1f-236f-425c-b177-3212e82360dc.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/06-25-49.733_mkngff/3d8c5a1f-236f-425c-b177-3212e82360dc.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/06-25-49.733_mkngff/3d8c5a1f-236f-425c-b177-3212e82360dc.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;
