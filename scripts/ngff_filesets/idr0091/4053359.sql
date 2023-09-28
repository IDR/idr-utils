UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/03-27-42.872_mkngff/588eaeed-d8e3-4a37-b938-a307283dd159.zarr' where image in (select id from Image where fileset = 4053359);

begin;
    select mkngff_fileset(
      4053359,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/03-27-42.872_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/03-27-42.872_mkngff/588eaeed-d8e3-4a37-b938-a307283dd159.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/03-27-42.872_mkngff/588eaeed-d8e3-4a37-b938-a307283dd159.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/03-27-42.872_mkngff/588eaeed-d8e3-4a37-b938-a307283dd159.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/03-27-42.872_mkngff/588eaeed-d8e3-4a37-b938-a307283dd159.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/03-27-42.872_mkngff/588eaeed-d8e3-4a37-b938-a307283dd159.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/03-27-42.872_mkngff/588eaeed-d8e3-4a37-b938-a307283dd159.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

