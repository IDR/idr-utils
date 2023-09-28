UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/17-00-39.165_mkngff/ce664d52-e01c-4939-9a47-cb353cc70d80.zarr' where image in (select id from Image where fileset = 4053166);

begin;
    select mkngff_fileset(
      4053166,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/17-00-39.165_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/17-00-39.165_mkngff/ce664d52-e01c-4939-9a47-cb353cc70d80.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/17-00-39.165_mkngff/ce664d52-e01c-4939-9a47-cb353cc70d80.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/17-00-39.165_mkngff/ce664d52-e01c-4939-9a47-cb353cc70d80.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/17-00-39.165_mkngff/ce664d52-e01c-4939-9a47-cb353cc70d80.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/17-00-39.165_mkngff/ce664d52-e01c-4939-9a47-cb353cc70d80.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/17-00-39.165_mkngff/ce664d52-e01c-4939-9a47-cb353cc70d80.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

