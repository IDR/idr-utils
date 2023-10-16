UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/02/22-49-33.618_mkngff/3100fe3d-624e-4170-84ee-2bd4933e4a63.zarr' where image in (select id from Image where fileset = 4053314);

begin;
    select mkngff_fileset(
      4053314,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/02/22-49-33.618_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/02/22-49-33.618_mkngff/3100fe3d-624e-4170-84ee-2bd4933e4a63.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3100fe3d-624e-4170-84ee-2bd4933e4a63/3100fe3d-624e-4170-84ee-2bd4933e4a63.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/02/22-49-33.618_mkngff/3100fe3d-624e-4170-84ee-2bd4933e4a63.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3100fe3d-624e-4170-84ee-2bd4933e4a63/3100fe3d-624e-4170-84ee-2bd4933e4a63.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/02/22-49-33.618_mkngff/3100fe3d-624e-4170-84ee-2bd4933e4a63.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3100fe3d-624e-4170-84ee-2bd4933e4a63/3100fe3d-624e-4170-84ee-2bd4933e4a63.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/02/22-49-33.618_mkngff/3100fe3d-624e-4170-84ee-2bd4933e4a63.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3100fe3d-624e-4170-84ee-2bd4933e4a63/3100fe3d-624e-4170-84ee-2bd4933e4a63.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/02/22-49-33.618_mkngff/3100fe3d-624e-4170-84ee-2bd4933e4a63.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3100fe3d-624e-4170-84ee-2bd4933e4a63/3100fe3d-624e-4170-84ee-2bd4933e4a63.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/02/22-49-33.618_mkngff/3100fe3d-624e-4170-84ee-2bd4933e4a63.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3100fe3d-624e-4170-84ee-2bd4933e4a63/3100fe3d-624e-4170-84ee-2bd4933e4a63.zarr/3/.zarray']
      ]::text[][]
    );
commit;

