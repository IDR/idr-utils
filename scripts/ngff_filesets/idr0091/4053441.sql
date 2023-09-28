UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/10-51-27.458_mkngff/36ffe8b6-aff8-4033-8e32-33256fcd433b.zarr' where image in (select id from Image where fileset = 4053441);

begin;
    select mkngff_fileset(
      4053441,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/10-51-27.458_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/10-51-27.458_mkngff/36ffe8b6-aff8-4033-8e32-33256fcd433b.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/10-51-27.458_mkngff/36ffe8b6-aff8-4033-8e32-33256fcd433b.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/10-51-27.458_mkngff/36ffe8b6-aff8-4033-8e32-33256fcd433b.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/10-51-27.458_mkngff/36ffe8b6-aff8-4033-8e32-33256fcd433b.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/10-51-27.458_mkngff/36ffe8b6-aff8-4033-8e32-33256fcd433b.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/10-51-27.458_mkngff/36ffe8b6-aff8-4033-8e32-33256fcd433b.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

