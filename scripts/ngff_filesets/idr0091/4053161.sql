UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/02/16-35-51.773_mkngff/126e2e4b-cea6-4ea4-8674-1d0aa7de1aec.zarr' where image in (select id from Image where fileset = 4053161);

begin;
    select mkngff_fileset(
      4053161,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/02/16-35-51.773_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/02/16-35-51.773_mkngff/126e2e4b-cea6-4ea4-8674-1d0aa7de1aec.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/126e2e4b-cea6-4ea4-8674-1d0aa7de1aec/126e2e4b-cea6-4ea4-8674-1d0aa7de1aec.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/02/16-35-51.773_mkngff/126e2e4b-cea6-4ea4-8674-1d0aa7de1aec.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/126e2e4b-cea6-4ea4-8674-1d0aa7de1aec/126e2e4b-cea6-4ea4-8674-1d0aa7de1aec.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/02/16-35-51.773_mkngff/126e2e4b-cea6-4ea4-8674-1d0aa7de1aec.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/126e2e4b-cea6-4ea4-8674-1d0aa7de1aec/126e2e4b-cea6-4ea4-8674-1d0aa7de1aec.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/02/16-35-51.773_mkngff/126e2e4b-cea6-4ea4-8674-1d0aa7de1aec.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/126e2e4b-cea6-4ea4-8674-1d0aa7de1aec/126e2e4b-cea6-4ea4-8674-1d0aa7de1aec.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/02/16-35-51.773_mkngff/126e2e4b-cea6-4ea4-8674-1d0aa7de1aec.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/126e2e4b-cea6-4ea4-8674-1d0aa7de1aec/126e2e4b-cea6-4ea4-8674-1d0aa7de1aec.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/02/16-35-51.773_mkngff/126e2e4b-cea6-4ea4-8674-1d0aa7de1aec.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/126e2e4b-cea6-4ea4-8674-1d0aa7de1aec/126e2e4b-cea6-4ea4-8674-1d0aa7de1aec.zarr/3/.zarray']
      ]::text[][]
    );
commit;

