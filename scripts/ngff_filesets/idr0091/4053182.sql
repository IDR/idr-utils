UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/02/18-31-36.156_mkngff/e11e0bd9-fbad-4c3e-a0f2-5f301173bdd0.zarr' where image in (select id from Image where fileset = 4053182);

begin;
    select mkngff_fileset(
      4053182,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/02/18-31-36.156_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/02/18-31-36.156_mkngff/e11e0bd9-fbad-4c3e-a0f2-5f301173bdd0.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e11e0bd9-fbad-4c3e-a0f2-5f301173bdd0/e11e0bd9-fbad-4c3e-a0f2-5f301173bdd0.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/02/18-31-36.156_mkngff/e11e0bd9-fbad-4c3e-a0f2-5f301173bdd0.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e11e0bd9-fbad-4c3e-a0f2-5f301173bdd0/e11e0bd9-fbad-4c3e-a0f2-5f301173bdd0.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/02/18-31-36.156_mkngff/e11e0bd9-fbad-4c3e-a0f2-5f301173bdd0.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e11e0bd9-fbad-4c3e-a0f2-5f301173bdd0/e11e0bd9-fbad-4c3e-a0f2-5f301173bdd0.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/02/18-31-36.156_mkngff/e11e0bd9-fbad-4c3e-a0f2-5f301173bdd0.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e11e0bd9-fbad-4c3e-a0f2-5f301173bdd0/e11e0bd9-fbad-4c3e-a0f2-5f301173bdd0.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/02/18-31-36.156_mkngff/e11e0bd9-fbad-4c3e-a0f2-5f301173bdd0.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e11e0bd9-fbad-4c3e-a0f2-5f301173bdd0/e11e0bd9-fbad-4c3e-a0f2-5f301173bdd0.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/02/18-31-36.156_mkngff/e11e0bd9-fbad-4c3e-a0f2-5f301173bdd0.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e11e0bd9-fbad-4c3e-a0f2-5f301173bdd0/e11e0bd9-fbad-4c3e-a0f2-5f301173bdd0.zarr/3/.zarray']
      ]::text[][]
    );
commit;

