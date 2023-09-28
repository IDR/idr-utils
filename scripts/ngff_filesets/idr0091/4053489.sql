UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/13-30-18.281_mkngff/46523d0c-95a4-4f94-9acc-c20fb4712b0f.zarr' where image in (select id from Image where fileset = 4053489);

begin;
    select mkngff_fileset(
      4053489,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/13-30-18.281_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/13-30-18.281_mkngff/46523d0c-95a4-4f94-9acc-c20fb4712b0f.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/13-30-18.281_mkngff/46523d0c-95a4-4f94-9acc-c20fb4712b0f.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/13-30-18.281_mkngff/46523d0c-95a4-4f94-9acc-c20fb4712b0f.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/13-30-18.281_mkngff/46523d0c-95a4-4f94-9acc-c20fb4712b0f.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/13-30-18.281_mkngff/46523d0c-95a4-4f94-9acc-c20fb4712b0f.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/13-30-18.281_mkngff/46523d0c-95a4-4f94-9acc-c20fb4712b0f.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

