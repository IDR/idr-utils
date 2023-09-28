UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/17-57-09.638_mkngff/3544dcbc-1fb7-413c-88fd-d4ff92bfea21.zarr' where image in (select id from Image where fileset = 4053843);

begin;
    select mkngff_fileset(
      4053843,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/17-57-09.638_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/17-57-09.638_mkngff/3544dcbc-1fb7-413c-88fd-d4ff92bfea21.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/17-57-09.638_mkngff/3544dcbc-1fb7-413c-88fd-d4ff92bfea21.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/17-57-09.638_mkngff/3544dcbc-1fb7-413c-88fd-d4ff92bfea21.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/17-57-09.638_mkngff/3544dcbc-1fb7-413c-88fd-d4ff92bfea21.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/17-57-09.638_mkngff/3544dcbc-1fb7-413c-88fd-d4ff92bfea21.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/17-57-09.638_mkngff/3544dcbc-1fb7-413c-88fd-d4ff92bfea21.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

