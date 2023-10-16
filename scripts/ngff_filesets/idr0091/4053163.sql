UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/02/16-45-54.346_mkngff/de8cd1ca-d855-48c9-8d65-c7722c2edbc3.zarr' where image in (select id from Image where fileset = 4053163);

begin;
    select mkngff_fileset(
      4053163,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/02/16-45-54.346_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/02/16-45-54.346_mkngff/de8cd1ca-d855-48c9-8d65-c7722c2edbc3.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/de8cd1ca-d855-48c9-8d65-c7722c2edbc3/de8cd1ca-d855-48c9-8d65-c7722c2edbc3.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/02/16-45-54.346_mkngff/de8cd1ca-d855-48c9-8d65-c7722c2edbc3.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/de8cd1ca-d855-48c9-8d65-c7722c2edbc3/de8cd1ca-d855-48c9-8d65-c7722c2edbc3.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/02/16-45-54.346_mkngff/de8cd1ca-d855-48c9-8d65-c7722c2edbc3.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/de8cd1ca-d855-48c9-8d65-c7722c2edbc3/de8cd1ca-d855-48c9-8d65-c7722c2edbc3.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/02/16-45-54.346_mkngff/de8cd1ca-d855-48c9-8d65-c7722c2edbc3.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/de8cd1ca-d855-48c9-8d65-c7722c2edbc3/de8cd1ca-d855-48c9-8d65-c7722c2edbc3.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/02/16-45-54.346_mkngff/de8cd1ca-d855-48c9-8d65-c7722c2edbc3.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/de8cd1ca-d855-48c9-8d65-c7722c2edbc3/de8cd1ca-d855-48c9-8d65-c7722c2edbc3.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/02/16-45-54.346_mkngff/de8cd1ca-d855-48c9-8d65-c7722c2edbc3.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/de8cd1ca-d855-48c9-8d65-c7722c2edbc3/de8cd1ca-d855-48c9-8d65-c7722c2edbc3.zarr/3/.zarray']
      ]::text[][]
    );
commit;

