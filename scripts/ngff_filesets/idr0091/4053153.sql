UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/02/15-49-36.182_mkngff/388c03f3-b05a-4f33-8db4-4878f3978cbc.zarr' where image in (select id from Image where fileset = 4053153);

begin;
    select mkngff_fileset(
      4053153,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/02/15-49-36.182_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/02/15-49-36.182_mkngff/388c03f3-b05a-4f33-8db4-4878f3978cbc.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/388c03f3-b05a-4f33-8db4-4878f3978cbc/388c03f3-b05a-4f33-8db4-4878f3978cbc.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/02/15-49-36.182_mkngff/388c03f3-b05a-4f33-8db4-4878f3978cbc.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/388c03f3-b05a-4f33-8db4-4878f3978cbc/388c03f3-b05a-4f33-8db4-4878f3978cbc.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/02/15-49-36.182_mkngff/388c03f3-b05a-4f33-8db4-4878f3978cbc.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/388c03f3-b05a-4f33-8db4-4878f3978cbc/388c03f3-b05a-4f33-8db4-4878f3978cbc.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/02/15-49-36.182_mkngff/388c03f3-b05a-4f33-8db4-4878f3978cbc.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/388c03f3-b05a-4f33-8db4-4878f3978cbc/388c03f3-b05a-4f33-8db4-4878f3978cbc.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/02/15-49-36.182_mkngff/388c03f3-b05a-4f33-8db4-4878f3978cbc.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/388c03f3-b05a-4f33-8db4-4878f3978cbc/388c03f3-b05a-4f33-8db4-4878f3978cbc.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/02/15-49-36.182_mkngff/388c03f3-b05a-4f33-8db4-4878f3978cbc.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/388c03f3-b05a-4f33-8db4-4878f3978cbc/388c03f3-b05a-4f33-8db4-4878f3978cbc.zarr/3/.zarray']
      ]::text[][]
    );
commit;

