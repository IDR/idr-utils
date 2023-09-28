UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/02/20-03-01.439_mkngff/9273a438-0eb6-4318-baef-deb102f11e22.zarr' where image in (select id from Image where fileset = 4053196);

begin;
    select mkngff_fileset(
      4053196,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/02/20-03-01.439_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/02/20-03-01.439_mkngff/9273a438-0eb6-4318-baef-deb102f11e22.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/02/20-03-01.439_mkngff/9273a438-0eb6-4318-baef-deb102f11e22.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/02/20-03-01.439_mkngff/9273a438-0eb6-4318-baef-deb102f11e22.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/02/20-03-01.439_mkngff/9273a438-0eb6-4318-baef-deb102f11e22.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/02/20-03-01.439_mkngff/9273a438-0eb6-4318-baef-deb102f11e22.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/02/20-03-01.439_mkngff/9273a438-0eb6-4318-baef-deb102f11e22.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

