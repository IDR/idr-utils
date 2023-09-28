UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/13-12-42.671_mkngff/46783872-1c1d-42ae-a209-a88f27b3d53c.zarr' where image in (select id from Image where fileset = 4053486);

begin;
    select mkngff_fileset(
      4053486,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/13-12-42.671_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/13-12-42.671_mkngff/46783872-1c1d-42ae-a209-a88f27b3d53c.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/13-12-42.671_mkngff/46783872-1c1d-42ae-a209-a88f27b3d53c.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/13-12-42.671_mkngff/46783872-1c1d-42ae-a209-a88f27b3d53c.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/13-12-42.671_mkngff/46783872-1c1d-42ae-a209-a88f27b3d53c.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/13-12-42.671_mkngff/46783872-1c1d-42ae-a209-a88f27b3d53c.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/13-12-42.671_mkngff/46783872-1c1d-42ae-a209-a88f27b3d53c.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

