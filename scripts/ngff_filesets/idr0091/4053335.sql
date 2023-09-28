UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/00-51-43.925_mkngff/8ff48461-e279-44b6-bb3d-c9f6a1c7f13d.zarr' where image in (select id from Image where fileset = 4053335);

begin;
    select mkngff_fileset(
      4053335,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/00-51-43.925_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/00-51-43.925_mkngff/8ff48461-e279-44b6-bb3d-c9f6a1c7f13d.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/00-51-43.925_mkngff/8ff48461-e279-44b6-bb3d-c9f6a1c7f13d.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/00-51-43.925_mkngff/8ff48461-e279-44b6-bb3d-c9f6a1c7f13d.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/00-51-43.925_mkngff/8ff48461-e279-44b6-bb3d-c9f6a1c7f13d.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/00-51-43.925_mkngff/8ff48461-e279-44b6-bb3d-c9f6a1c7f13d.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/00-51-43.925_mkngff/8ff48461-e279-44b6-bb3d-c9f6a1c7f13d.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

