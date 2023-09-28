UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/18-29-59.474_mkngff/7e20195b-dbf0-4c98-a3f6-71820816c999.zarr' where image in (select id from Image where fileset = 4053857);

begin;
    select mkngff_fileset(
      4053857,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/18-29-59.474_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/18-29-59.474_mkngff/7e20195b-dbf0-4c98-a3f6-71820816c999.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/18-29-59.474_mkngff/7e20195b-dbf0-4c98-a3f6-71820816c999.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/18-29-59.474_mkngff/7e20195b-dbf0-4c98-a3f6-71820816c999.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/18-29-59.474_mkngff/7e20195b-dbf0-4c98-a3f6-71820816c999.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/18-29-59.474_mkngff/7e20195b-dbf0-4c98-a3f6-71820816c999.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/18-29-59.474_mkngff/7e20195b-dbf0-4c98-a3f6-71820816c999.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

