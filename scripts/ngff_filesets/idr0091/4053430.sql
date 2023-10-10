UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/10-03-05.277_mkngff/514bf6e8-5c42-46ed-9863-1f2458efdda2.zarr' where image in (select id from Image where fileset = 4053430);

begin;
    select mkngff_fileset(
      4053430,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/10-03-05.277_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/10-03-05.277_mkngff/514bf6e8-5c42-46ed-9863-1f2458efdda2.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/10-03-05.277_mkngff/514bf6e8-5c42-46ed-9863-1f2458efdda2.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/10-03-05.277_mkngff/514bf6e8-5c42-46ed-9863-1f2458efdda2.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/10-03-05.277_mkngff/514bf6e8-5c42-46ed-9863-1f2458efdda2.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/10-03-05.277_mkngff/514bf6e8-5c42-46ed-9863-1f2458efdda2.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/10-03-05.277_mkngff/514bf6e8-5c42-46ed-9863-1f2458efdda2.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;
