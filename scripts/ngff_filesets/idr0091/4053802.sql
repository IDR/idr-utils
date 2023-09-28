UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/16-18-19.710_mkngff/4771567a-ed12-473d-82a0-57efe80567ad.zarr' where image in (select id from Image where fileset = 4053802);

begin;
    select mkngff_fileset(
      4053802,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/16-18-19.710_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/16-18-19.710_mkngff/4771567a-ed12-473d-82a0-57efe80567ad.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/16-18-19.710_mkngff/4771567a-ed12-473d-82a0-57efe80567ad.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/16-18-19.710_mkngff/4771567a-ed12-473d-82a0-57efe80567ad.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/16-18-19.710_mkngff/4771567a-ed12-473d-82a0-57efe80567ad.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/16-18-19.710_mkngff/4771567a-ed12-473d-82a0-57efe80567ad.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/16-18-19.710_mkngff/4771567a-ed12-473d-82a0-57efe80567ad.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

