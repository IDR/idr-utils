UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/11-38-18.315_mkngff/ffd8bfb6-d6c4-4721-8480-34bfc413ce1f.zarr' where image in (select id from Image where fileset = 4053457);

begin;
    select mkngff_fileset(
      4053457,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/11-38-18.315_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/11-38-18.315_mkngff/ffd8bfb6-d6c4-4721-8480-34bfc413ce1f.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/ffd8bfb6-d6c4-4721-8480-34bfc413ce1f/ffd8bfb6-d6c4-4721-8480-34bfc413ce1f.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/11-38-18.315_mkngff/ffd8bfb6-d6c4-4721-8480-34bfc413ce1f.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/ffd8bfb6-d6c4-4721-8480-34bfc413ce1f/ffd8bfb6-d6c4-4721-8480-34bfc413ce1f.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/11-38-18.315_mkngff/ffd8bfb6-d6c4-4721-8480-34bfc413ce1f.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/ffd8bfb6-d6c4-4721-8480-34bfc413ce1f/ffd8bfb6-d6c4-4721-8480-34bfc413ce1f.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/11-38-18.315_mkngff/ffd8bfb6-d6c4-4721-8480-34bfc413ce1f.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/ffd8bfb6-d6c4-4721-8480-34bfc413ce1f/ffd8bfb6-d6c4-4721-8480-34bfc413ce1f.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/11-38-18.315_mkngff/ffd8bfb6-d6c4-4721-8480-34bfc413ce1f.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/ffd8bfb6-d6c4-4721-8480-34bfc413ce1f/ffd8bfb6-d6c4-4721-8480-34bfc413ce1f.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/11-38-18.315_mkngff/ffd8bfb6-d6c4-4721-8480-34bfc413ce1f.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/ffd8bfb6-d6c4-4721-8480-34bfc413ce1f/ffd8bfb6-d6c4-4721-8480-34bfc413ce1f.zarr/3/.zarray']
      ]::text[][]
    );
commit;

