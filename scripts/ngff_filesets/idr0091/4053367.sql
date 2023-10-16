UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/04-30-14.481_mkngff/e8bca95e-cb8d-4bf5-b0fe-05203c4a7a82.zarr' where image in (select id from Image where fileset = 4053367);

begin;
    select mkngff_fileset(
      4053367,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/04-30-14.481_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/04-30-14.481_mkngff/e8bca95e-cb8d-4bf5-b0fe-05203c4a7a82.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e8bca95e-cb8d-4bf5-b0fe-05203c4a7a82/e8bca95e-cb8d-4bf5-b0fe-05203c4a7a82.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/04-30-14.481_mkngff/e8bca95e-cb8d-4bf5-b0fe-05203c4a7a82.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e8bca95e-cb8d-4bf5-b0fe-05203c4a7a82/e8bca95e-cb8d-4bf5-b0fe-05203c4a7a82.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/04-30-14.481_mkngff/e8bca95e-cb8d-4bf5-b0fe-05203c4a7a82.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e8bca95e-cb8d-4bf5-b0fe-05203c4a7a82/e8bca95e-cb8d-4bf5-b0fe-05203c4a7a82.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/04-30-14.481_mkngff/e8bca95e-cb8d-4bf5-b0fe-05203c4a7a82.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e8bca95e-cb8d-4bf5-b0fe-05203c4a7a82/e8bca95e-cb8d-4bf5-b0fe-05203c4a7a82.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/04-30-14.481_mkngff/e8bca95e-cb8d-4bf5-b0fe-05203c4a7a82.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e8bca95e-cb8d-4bf5-b0fe-05203c4a7a82/e8bca95e-cb8d-4bf5-b0fe-05203c4a7a82.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/04-30-14.481_mkngff/e8bca95e-cb8d-4bf5-b0fe-05203c4a7a82.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e8bca95e-cb8d-4bf5-b0fe-05203c4a7a82/e8bca95e-cb8d-4bf5-b0fe-05203c4a7a82.zarr/3/.zarray']
      ]::text[][]
    );
commit;

