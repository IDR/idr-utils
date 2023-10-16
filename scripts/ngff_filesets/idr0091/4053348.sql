UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/02-15-11.470_mkngff/bb637cf6-4616-415b-a16f-15667d9fe211.zarr' where image in (select id from Image where fileset = 4053348);

begin;
    select mkngff_fileset(
      4053348,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/02-15-11.470_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/02-15-11.470_mkngff/bb637cf6-4616-415b-a16f-15667d9fe211.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/bb637cf6-4616-415b-a16f-15667d9fe211/bb637cf6-4616-415b-a16f-15667d9fe211.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/02-15-11.470_mkngff/bb637cf6-4616-415b-a16f-15667d9fe211.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/bb637cf6-4616-415b-a16f-15667d9fe211/bb637cf6-4616-415b-a16f-15667d9fe211.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/02-15-11.470_mkngff/bb637cf6-4616-415b-a16f-15667d9fe211.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/bb637cf6-4616-415b-a16f-15667d9fe211/bb637cf6-4616-415b-a16f-15667d9fe211.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/02-15-11.470_mkngff/bb637cf6-4616-415b-a16f-15667d9fe211.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/bb637cf6-4616-415b-a16f-15667d9fe211/bb637cf6-4616-415b-a16f-15667d9fe211.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/02-15-11.470_mkngff/bb637cf6-4616-415b-a16f-15667d9fe211.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/bb637cf6-4616-415b-a16f-15667d9fe211/bb637cf6-4616-415b-a16f-15667d9fe211.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/02-15-11.470_mkngff/bb637cf6-4616-415b-a16f-15667d9fe211.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/bb637cf6-4616-415b-a16f-15667d9fe211/bb637cf6-4616-415b-a16f-15667d9fe211.zarr/3/.zarray']
      ]::text[][]
    );
commit;

