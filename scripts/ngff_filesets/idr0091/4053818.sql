UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/16-56-37.519_mkngff/82331237-484f-4d33-a6f9-b65a4154b1da.zarr' where image in (select id from Image where fileset = 4053818);

begin;
    select mkngff_fileset(
      4053818,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/16-56-37.519_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/16-56-37.519_mkngff/82331237-484f-4d33-a6f9-b65a4154b1da.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/82331237-484f-4d33-a6f9-b65a4154b1da/82331237-484f-4d33-a6f9-b65a4154b1da.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/16-56-37.519_mkngff/82331237-484f-4d33-a6f9-b65a4154b1da.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/82331237-484f-4d33-a6f9-b65a4154b1da/82331237-484f-4d33-a6f9-b65a4154b1da.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/16-56-37.519_mkngff/82331237-484f-4d33-a6f9-b65a4154b1da.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/82331237-484f-4d33-a6f9-b65a4154b1da/82331237-484f-4d33-a6f9-b65a4154b1da.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/16-56-37.519_mkngff/82331237-484f-4d33-a6f9-b65a4154b1da.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/82331237-484f-4d33-a6f9-b65a4154b1da/82331237-484f-4d33-a6f9-b65a4154b1da.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/16-56-37.519_mkngff/82331237-484f-4d33-a6f9-b65a4154b1da.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/82331237-484f-4d33-a6f9-b65a4154b1da/82331237-484f-4d33-a6f9-b65a4154b1da.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/16-56-37.519_mkngff/82331237-484f-4d33-a6f9-b65a4154b1da.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/82331237-484f-4d33-a6f9-b65a4154b1da/82331237-484f-4d33-a6f9-b65a4154b1da.zarr/3/.zarray']
      ]::text[][]
    );
commit;

