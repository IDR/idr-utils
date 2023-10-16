UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/02/19-43-26.720_mkngff/e059dd75-2d0c-4257-b245-a67a90af112d.zarr' where image in (select id from Image where fileset = 4053194);

begin;
    select mkngff_fileset(
      4053194,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/02/19-43-26.720_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/02/19-43-26.720_mkngff/e059dd75-2d0c-4257-b245-a67a90af112d.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e059dd75-2d0c-4257-b245-a67a90af112d/e059dd75-2d0c-4257-b245-a67a90af112d.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/02/19-43-26.720_mkngff/e059dd75-2d0c-4257-b245-a67a90af112d.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e059dd75-2d0c-4257-b245-a67a90af112d/e059dd75-2d0c-4257-b245-a67a90af112d.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/02/19-43-26.720_mkngff/e059dd75-2d0c-4257-b245-a67a90af112d.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e059dd75-2d0c-4257-b245-a67a90af112d/e059dd75-2d0c-4257-b245-a67a90af112d.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/02/19-43-26.720_mkngff/e059dd75-2d0c-4257-b245-a67a90af112d.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e059dd75-2d0c-4257-b245-a67a90af112d/e059dd75-2d0c-4257-b245-a67a90af112d.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/02/19-43-26.720_mkngff/e059dd75-2d0c-4257-b245-a67a90af112d.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e059dd75-2d0c-4257-b245-a67a90af112d/e059dd75-2d0c-4257-b245-a67a90af112d.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/02/19-43-26.720_mkngff/e059dd75-2d0c-4257-b245-a67a90af112d.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e059dd75-2d0c-4257-b245-a67a90af112d/e059dd75-2d0c-4257-b245-a67a90af112d.zarr/3/.zarray']
      ]::text[][]
    );
commit;

