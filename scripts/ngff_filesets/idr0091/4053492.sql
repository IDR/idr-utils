UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/13-46-36.358_mkngff/039c6513-845f-47fd-abab-6d1a560634f5.zarr' where image in (select id from Image where fileset = 4053492);

begin;
    select mkngff_fileset(
      4053492,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/13-46-36.358_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/13-46-36.358_mkngff/039c6513-845f-47fd-abab-6d1a560634f5.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/13-46-36.358_mkngff/039c6513-845f-47fd-abab-6d1a560634f5.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/13-46-36.358_mkngff/039c6513-845f-47fd-abab-6d1a560634f5.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/13-46-36.358_mkngff/039c6513-845f-47fd-abab-6d1a560634f5.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/13-46-36.358_mkngff/039c6513-845f-47fd-abab-6d1a560634f5.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/13-46-36.358_mkngff/039c6513-845f-47fd-abab-6d1a560634f5.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

