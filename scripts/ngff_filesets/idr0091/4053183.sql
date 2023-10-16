UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/18-36-45.170_mkngff/801a0a02-849b-4bfb-860b-6ea598cd5d64.zarr' where image in (select id from Image where fileset = 4053183);

begin;
    select mkngff_fileset(
      4053183,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/18-36-45.170_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/18-36-45.170_mkngff/801a0a02-849b-4bfb-860b-6ea598cd5d64.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/801a0a02-849b-4bfb-860b-6ea598cd5d64/801a0a02-849b-4bfb-860b-6ea598cd5d64.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/18-36-45.170_mkngff/801a0a02-849b-4bfb-860b-6ea598cd5d64.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/801a0a02-849b-4bfb-860b-6ea598cd5d64/801a0a02-849b-4bfb-860b-6ea598cd5d64.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/18-36-45.170_mkngff/801a0a02-849b-4bfb-860b-6ea598cd5d64.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/801a0a02-849b-4bfb-860b-6ea598cd5d64/801a0a02-849b-4bfb-860b-6ea598cd5d64.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/18-36-45.170_mkngff/801a0a02-849b-4bfb-860b-6ea598cd5d64.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/801a0a02-849b-4bfb-860b-6ea598cd5d64/801a0a02-849b-4bfb-860b-6ea598cd5d64.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/18-36-45.170_mkngff/801a0a02-849b-4bfb-860b-6ea598cd5d64.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/801a0a02-849b-4bfb-860b-6ea598cd5d64/801a0a02-849b-4bfb-860b-6ea598cd5d64.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/18-36-45.170_mkngff/801a0a02-849b-4bfb-860b-6ea598cd5d64.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/801a0a02-849b-4bfb-860b-6ea598cd5d64/801a0a02-849b-4bfb-860b-6ea598cd5d64.zarr/3/.zarray']
      ]::text[][]
    );
commit;

