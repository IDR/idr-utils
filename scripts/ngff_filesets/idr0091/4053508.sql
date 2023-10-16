UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/15-15-33.187_mkngff/64ac6466-ce9e-4209-ad5e-674f28ebb351.zarr' where image in (select id from Image where fileset = 4053508);

begin;
    select mkngff_fileset(
      4053508,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/15-15-33.187_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/15-15-33.187_mkngff/64ac6466-ce9e-4209-ad5e-674f28ebb351.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/64ac6466-ce9e-4209-ad5e-674f28ebb351/64ac6466-ce9e-4209-ad5e-674f28ebb351.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/15-15-33.187_mkngff/64ac6466-ce9e-4209-ad5e-674f28ebb351.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/64ac6466-ce9e-4209-ad5e-674f28ebb351/64ac6466-ce9e-4209-ad5e-674f28ebb351.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/15-15-33.187_mkngff/64ac6466-ce9e-4209-ad5e-674f28ebb351.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/64ac6466-ce9e-4209-ad5e-674f28ebb351/64ac6466-ce9e-4209-ad5e-674f28ebb351.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/15-15-33.187_mkngff/64ac6466-ce9e-4209-ad5e-674f28ebb351.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/64ac6466-ce9e-4209-ad5e-674f28ebb351/64ac6466-ce9e-4209-ad5e-674f28ebb351.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/15-15-33.187_mkngff/64ac6466-ce9e-4209-ad5e-674f28ebb351.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/64ac6466-ce9e-4209-ad5e-674f28ebb351/64ac6466-ce9e-4209-ad5e-674f28ebb351.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/15-15-33.187_mkngff/64ac6466-ce9e-4209-ad5e-674f28ebb351.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/64ac6466-ce9e-4209-ad5e-674f28ebb351/64ac6466-ce9e-4209-ad5e-674f28ebb351.zarr/3/.zarray']
      ]::text[][]
    );
commit;

