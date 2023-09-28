UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/22-28-56.835_mkngff/af321bb3-29b0-484b-b301-7e9665ce5a27.zarr' where image in (select id from Image where fileset = 4053310);

begin;
    select mkngff_fileset(
      4053310,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/22-28-56.835_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/22-28-56.835_mkngff/af321bb3-29b0-484b-b301-7e9665ce5a27.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/22-28-56.835_mkngff/af321bb3-29b0-484b-b301-7e9665ce5a27.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/22-28-56.835_mkngff/af321bb3-29b0-484b-b301-7e9665ce5a27.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/22-28-56.835_mkngff/af321bb3-29b0-484b-b301-7e9665ce5a27.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/22-28-56.835_mkngff/af321bb3-29b0-484b-b301-7e9665ce5a27.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/22-28-56.835_mkngff/af321bb3-29b0-484b-b301-7e9665ce5a27.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

