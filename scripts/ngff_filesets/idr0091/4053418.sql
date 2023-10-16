UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/09-11-38.628_mkngff/c232be45-b4a9-415c-aac3-ad66d0279898.zarr' where image in (select id from Image where fileset = 4053418);

begin;
    select mkngff_fileset(
      4053418,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/09-11-38.628_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/09-11-38.628_mkngff/c232be45-b4a9-415c-aac3-ad66d0279898.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/c232be45-b4a9-415c-aac3-ad66d0279898/c232be45-b4a9-415c-aac3-ad66d0279898.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/09-11-38.628_mkngff/c232be45-b4a9-415c-aac3-ad66d0279898.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/c232be45-b4a9-415c-aac3-ad66d0279898/c232be45-b4a9-415c-aac3-ad66d0279898.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/09-11-38.628_mkngff/c232be45-b4a9-415c-aac3-ad66d0279898.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/c232be45-b4a9-415c-aac3-ad66d0279898/c232be45-b4a9-415c-aac3-ad66d0279898.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/09-11-38.628_mkngff/c232be45-b4a9-415c-aac3-ad66d0279898.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/c232be45-b4a9-415c-aac3-ad66d0279898/c232be45-b4a9-415c-aac3-ad66d0279898.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/09-11-38.628_mkngff/c232be45-b4a9-415c-aac3-ad66d0279898.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/c232be45-b4a9-415c-aac3-ad66d0279898/c232be45-b4a9-415c-aac3-ad66d0279898.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/09-11-38.628_mkngff/c232be45-b4a9-415c-aac3-ad66d0279898.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/c232be45-b4a9-415c-aac3-ad66d0279898/c232be45-b4a9-415c-aac3-ad66d0279898.zarr/3/.zarray']
      ]::text[][]
    );
commit;

