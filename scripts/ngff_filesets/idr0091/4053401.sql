UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/08-31-10.705_mkngff/e5cc0802-6d3a-4e74-a533-4a2d82caa44d.zarr' where image in (select id from Image where fileset = 4053401);

begin;
    select mkngff_fileset(
      4053401,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/08-31-10.705_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/08-31-10.705_mkngff/e5cc0802-6d3a-4e74-a533-4a2d82caa44d.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/08-31-10.705_mkngff/e5cc0802-6d3a-4e74-a533-4a2d82caa44d.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/08-31-10.705_mkngff/e5cc0802-6d3a-4e74-a533-4a2d82caa44d.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/08-31-10.705_mkngff/e5cc0802-6d3a-4e74-a533-4a2d82caa44d.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/08-31-10.705_mkngff/e5cc0802-6d3a-4e74-a533-4a2d82caa44d.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/08-31-10.705_mkngff/e5cc0802-6d3a-4e74-a533-4a2d82caa44d.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

