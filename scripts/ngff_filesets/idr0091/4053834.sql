UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/17-35-47.556_mkngff/8c32e0c1-690f-4412-a88d-d77a4c043fea.zarr' where image in (select id from Image where fileset = 4053834);

begin;
    select mkngff_fileset(
      4053834,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/17-35-47.556_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/17-35-47.556_mkngff/8c32e0c1-690f-4412-a88d-d77a4c043fea.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/8c32e0c1-690f-4412-a88d-d77a4c043fea/8c32e0c1-690f-4412-a88d-d77a4c043fea.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/17-35-47.556_mkngff/8c32e0c1-690f-4412-a88d-d77a4c043fea.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/8c32e0c1-690f-4412-a88d-d77a4c043fea/8c32e0c1-690f-4412-a88d-d77a4c043fea.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/17-35-47.556_mkngff/8c32e0c1-690f-4412-a88d-d77a4c043fea.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/8c32e0c1-690f-4412-a88d-d77a4c043fea/8c32e0c1-690f-4412-a88d-d77a4c043fea.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/17-35-47.556_mkngff/8c32e0c1-690f-4412-a88d-d77a4c043fea.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/8c32e0c1-690f-4412-a88d-d77a4c043fea/8c32e0c1-690f-4412-a88d-d77a4c043fea.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/17-35-47.556_mkngff/8c32e0c1-690f-4412-a88d-d77a4c043fea.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/8c32e0c1-690f-4412-a88d-d77a4c043fea/8c32e0c1-690f-4412-a88d-d77a4c043fea.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/17-35-47.556_mkngff/8c32e0c1-690f-4412-a88d-d77a4c043fea.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/8c32e0c1-690f-4412-a88d-d77a4c043fea/8c32e0c1-690f-4412-a88d-d77a4c043fea.zarr/3/.zarray']
      ]::text[][]
    );
commit;

