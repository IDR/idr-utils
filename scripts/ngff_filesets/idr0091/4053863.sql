UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/18-44-01.328_mkngff/cf61e0ec-0789-4bf0-9b92-1b0479e52533.zarr' where image in (select id from Image where fileset = 4053863);

begin;
    select mkngff_fileset(
      4053863,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/18-44-01.328_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/18-44-01.328_mkngff/cf61e0ec-0789-4bf0-9b92-1b0479e52533.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/18-44-01.328_mkngff/cf61e0ec-0789-4bf0-9b92-1b0479e52533.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/18-44-01.328_mkngff/cf61e0ec-0789-4bf0-9b92-1b0479e52533.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/18-44-01.328_mkngff/cf61e0ec-0789-4bf0-9b92-1b0479e52533.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/18-44-01.328_mkngff/cf61e0ec-0789-4bf0-9b92-1b0479e52533.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/18-44-01.328_mkngff/cf61e0ec-0789-4bf0-9b92-1b0479e52533.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

