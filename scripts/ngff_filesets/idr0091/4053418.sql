UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/09-11-38.628_mkngff/c232be45-b4a9-415c-aac3-ad66d0279898.zarr' where image in (select id from Image where fileset = 4053418);

begin;
    select mkngff_fileset(
      4053418,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/09-11-38.628_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/09-11-38.628_mkngff/c232be45-b4a9-415c-aac3-ad66d0279898.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/09-11-38.628_mkngff/c232be45-b4a9-415c-aac3-ad66d0279898.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/09-11-38.628_mkngff/c232be45-b4a9-415c-aac3-ad66d0279898.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/09-11-38.628_mkngff/c232be45-b4a9-415c-aac3-ad66d0279898.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/09-11-38.628_mkngff/c232be45-b4a9-415c-aac3-ad66d0279898.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/09-11-38.628_mkngff/c232be45-b4a9-415c-aac3-ad66d0279898.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

