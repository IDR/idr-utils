UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/01-56-03.946_mkngff/2d78ed62-0447-4f08-bd32-facca697f704.zarr' where image in (select id from Image where fileset = 4053345);

begin;
    select mkngff_fileset(
      4053345,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/01-56-03.946_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/01-56-03.946_mkngff/2d78ed62-0447-4f08-bd32-facca697f704.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/01-56-03.946_mkngff/2d78ed62-0447-4f08-bd32-facca697f704.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/01-56-03.946_mkngff/2d78ed62-0447-4f08-bd32-facca697f704.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/01-56-03.946_mkngff/2d78ed62-0447-4f08-bd32-facca697f704.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/01-56-03.946_mkngff/2d78ed62-0447-4f08-bd32-facca697f704.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/01-56-03.946_mkngff/2d78ed62-0447-4f08-bd32-facca697f704.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

