UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/06-33-46.339_mkngff/cde09a5f-4692-47f1-8027-3bdc0fa8004c.zarr' where image in (select id from Image where fileset = 4053384);

begin;
    select mkngff_fileset(
      4053384,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/06-33-46.339_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/06-33-46.339_mkngff/cde09a5f-4692-47f1-8027-3bdc0fa8004c.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/06-33-46.339_mkngff/cde09a5f-4692-47f1-8027-3bdc0fa8004c.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/06-33-46.339_mkngff/cde09a5f-4692-47f1-8027-3bdc0fa8004c.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/06-33-46.339_mkngff/cde09a5f-4692-47f1-8027-3bdc0fa8004c.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/06-33-46.339_mkngff/cde09a5f-4692-47f1-8027-3bdc0fa8004c.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/06-33-46.339_mkngff/cde09a5f-4692-47f1-8027-3bdc0fa8004c.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

