UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/16-42-07.287_mkngff/9a33968e-146c-4750-b5c1-c6b52f92e533.zarr' where image in (select id from Image where fileset = 4053812);

begin;
    select mkngff_fileset(
      4053812,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/16-42-07.287_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/16-42-07.287_mkngff/9a33968e-146c-4750-b5c1-c6b52f92e533.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/9a33968e-146c-4750-b5c1-c6b52f92e533/9a33968e-146c-4750-b5c1-c6b52f92e533.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/16-42-07.287_mkngff/9a33968e-146c-4750-b5c1-c6b52f92e533.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/9a33968e-146c-4750-b5c1-c6b52f92e533/9a33968e-146c-4750-b5c1-c6b52f92e533.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/16-42-07.287_mkngff/9a33968e-146c-4750-b5c1-c6b52f92e533.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/9a33968e-146c-4750-b5c1-c6b52f92e533/9a33968e-146c-4750-b5c1-c6b52f92e533.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/16-42-07.287_mkngff/9a33968e-146c-4750-b5c1-c6b52f92e533.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/9a33968e-146c-4750-b5c1-c6b52f92e533/9a33968e-146c-4750-b5c1-c6b52f92e533.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/16-42-07.287_mkngff/9a33968e-146c-4750-b5c1-c6b52f92e533.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/9a33968e-146c-4750-b5c1-c6b52f92e533/9a33968e-146c-4750-b5c1-c6b52f92e533.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/16-42-07.287_mkngff/9a33968e-146c-4750-b5c1-c6b52f92e533.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/9a33968e-146c-4750-b5c1-c6b52f92e533/9a33968e-146c-4750-b5c1-c6b52f92e533.zarr/3/.zarray']
      ]::text[][]
    );
commit;

