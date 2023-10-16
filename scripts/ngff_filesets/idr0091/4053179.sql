UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/18-13-56.602_mkngff/3fd4ce5f-9471-4d88-a6dc-05b4b57955d4.zarr' where image in (select id from Image where fileset = 4053179);

begin;
    select mkngff_fileset(
      4053179,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/18-13-56.602_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/18-13-56.602_mkngff/3fd4ce5f-9471-4d88-a6dc-05b4b57955d4.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3fd4ce5f-9471-4d88-a6dc-05b4b57955d4/3fd4ce5f-9471-4d88-a6dc-05b4b57955d4.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/18-13-56.602_mkngff/3fd4ce5f-9471-4d88-a6dc-05b4b57955d4.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3fd4ce5f-9471-4d88-a6dc-05b4b57955d4/3fd4ce5f-9471-4d88-a6dc-05b4b57955d4.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/18-13-56.602_mkngff/3fd4ce5f-9471-4d88-a6dc-05b4b57955d4.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3fd4ce5f-9471-4d88-a6dc-05b4b57955d4/3fd4ce5f-9471-4d88-a6dc-05b4b57955d4.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/18-13-56.602_mkngff/3fd4ce5f-9471-4d88-a6dc-05b4b57955d4.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3fd4ce5f-9471-4d88-a6dc-05b4b57955d4/3fd4ce5f-9471-4d88-a6dc-05b4b57955d4.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/18-13-56.602_mkngff/3fd4ce5f-9471-4d88-a6dc-05b4b57955d4.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3fd4ce5f-9471-4d88-a6dc-05b4b57955d4/3fd4ce5f-9471-4d88-a6dc-05b4b57955d4.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/18-13-56.602_mkngff/3fd4ce5f-9471-4d88-a6dc-05b4b57955d4.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3fd4ce5f-9471-4d88-a6dc-05b4b57955d4/3fd4ce5f-9471-4d88-a6dc-05b4b57955d4.zarr/3/.zarray']
      ]::text[][]
    );
commit;

