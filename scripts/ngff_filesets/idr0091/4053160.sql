UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/16-30-40.943_mkngff/f3123369-e1f3-444a-9e0e-83e4dbbfccea.zarr' where image in (select id from Image where fileset = 4053160);

begin;
    select mkngff_fileset(
      4053160,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/16-30-40.943_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/16-30-40.943_mkngff/f3123369-e1f3-444a-9e0e-83e4dbbfccea.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/16-30-40.943_mkngff/f3123369-e1f3-444a-9e0e-83e4dbbfccea.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/16-30-40.943_mkngff/f3123369-e1f3-444a-9e0e-83e4dbbfccea.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/16-30-40.943_mkngff/f3123369-e1f3-444a-9e0e-83e4dbbfccea.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/16-30-40.943_mkngff/f3123369-e1f3-444a-9e0e-83e4dbbfccea.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/16-30-40.943_mkngff/f3123369-e1f3-444a-9e0e-83e4dbbfccea.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

