UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/12-00-29.603_mkngff/6c5cd03a-467c-499a-922f-e8f0346c9f42.zarr' where image in (select id from Image where fileset = 4053465);

begin;
    select mkngff_fileset(
      4053465,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/12-00-29.603_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/12-00-29.603_mkngff/6c5cd03a-467c-499a-922f-e8f0346c9f42.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/12-00-29.603_mkngff/6c5cd03a-467c-499a-922f-e8f0346c9f42.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/12-00-29.603_mkngff/6c5cd03a-467c-499a-922f-e8f0346c9f42.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/12-00-29.603_mkngff/6c5cd03a-467c-499a-922f-e8f0346c9f42.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/12-00-29.603_mkngff/6c5cd03a-467c-499a-922f-e8f0346c9f42.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/12-00-29.603_mkngff/6c5cd03a-467c-499a-922f-e8f0346c9f42.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

