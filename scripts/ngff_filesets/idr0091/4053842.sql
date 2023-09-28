UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/17-54-38.862_mkngff/85782f17-cb60-4ec6-9446-d26a78733588.zarr' where image in (select id from Image where fileset = 4053842);

begin;
    select mkngff_fileset(
      4053842,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/17-54-38.862_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/17-54-38.862_mkngff/85782f17-cb60-4ec6-9446-d26a78733588.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/17-54-38.862_mkngff/85782f17-cb60-4ec6-9446-d26a78733588.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/17-54-38.862_mkngff/85782f17-cb60-4ec6-9446-d26a78733588.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/17-54-38.862_mkngff/85782f17-cb60-4ec6-9446-d26a78733588.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/17-54-38.862_mkngff/85782f17-cb60-4ec6-9446-d26a78733588.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/17-54-38.862_mkngff/85782f17-cb60-4ec6-9446-d26a78733588.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

