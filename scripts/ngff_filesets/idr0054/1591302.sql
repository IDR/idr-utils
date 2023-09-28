UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2019-03/15/15-28-44.081_mkngff/e24d29ea-0e39-4368-a2e4-5e6320c91573.zarr/OME' where image in (select id from Image where fileset = 1591302);

begin;
    select mkngff_fileset(
      1591302,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2019-03/15/15-28-44.081_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2019-03/15/15-28-44.081_mkngff/e24d29ea-0e39-4368-a2e4-5e6320c91573.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2019-03/15/15-28-44.081_mkngff/e24d29ea-0e39-4368-a2e4-5e6320c91573.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2019-03/15/15-28-44.081_mkngff/e24d29ea-0e39-4368-a2e4-5e6320c91573.zarr/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2019-03/15/15-28-44.081_mkngff/e24d29ea-0e39-4368-a2e4-5e6320c91573.zarr/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2019-03/15/15-28-44.081_mkngff/e24d29ea-0e39-4368-a2e4-5e6320c91573.zarr/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2019-03/15/15-28-44.081_mkngff/e24d29ea-0e39-4368-a2e4-5e6320c91573.zarr/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2019-03/15/15-28-44.081_mkngff/e24d29ea-0e39-4368-a2e4-5e6320c91573.zarr/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2019-03/15/15-28-44.081_mkngff/e24d29ea-0e39-4368-a2e4-5e6320c91573.zarr/0/3/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2019-03/15/15-28-44.081_mkngff/e24d29ea-0e39-4368-a2e4-5e6320c91573.zarr/0/4/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2019-03/15/15-28-44.081_mkngff/e24d29ea-0e39-4368-a2e4-5e6320c91573.zarr/OME/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2019-03/15/15-28-44.081_mkngff/e24d29ea-0e39-4368-a2e4-5e6320c91573.zarr/OME/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2019-03/15/15-28-44.081_mkngff/e24d29ea-0e39-4368-a2e4-5e6320c91573.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream']
      ]::text[][]
    );
commit;

