UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/18-48-00.150_mkngff/6e1ca5ca-b358-4c8a-9699-4b2d050ac7c8.zarr' where image in (select id from Image where fileset = 4053185);

begin;
    select mkngff_fileset(
      4053185,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/18-48-00.150_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/18-48-00.150_mkngff/6e1ca5ca-b358-4c8a-9699-4b2d050ac7c8.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/6e1ca5ca-b358-4c8a-9699-4b2d050ac7c8/6e1ca5ca-b358-4c8a-9699-4b2d050ac7c8.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/18-48-00.150_mkngff/6e1ca5ca-b358-4c8a-9699-4b2d050ac7c8.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/6e1ca5ca-b358-4c8a-9699-4b2d050ac7c8/6e1ca5ca-b358-4c8a-9699-4b2d050ac7c8.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/18-48-00.150_mkngff/6e1ca5ca-b358-4c8a-9699-4b2d050ac7c8.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/6e1ca5ca-b358-4c8a-9699-4b2d050ac7c8/6e1ca5ca-b358-4c8a-9699-4b2d050ac7c8.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/18-48-00.150_mkngff/6e1ca5ca-b358-4c8a-9699-4b2d050ac7c8.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/6e1ca5ca-b358-4c8a-9699-4b2d050ac7c8/6e1ca5ca-b358-4c8a-9699-4b2d050ac7c8.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/18-48-00.150_mkngff/6e1ca5ca-b358-4c8a-9699-4b2d050ac7c8.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/6e1ca5ca-b358-4c8a-9699-4b2d050ac7c8/6e1ca5ca-b358-4c8a-9699-4b2d050ac7c8.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/18-48-00.150_mkngff/6e1ca5ca-b358-4c8a-9699-4b2d050ac7c8.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/6e1ca5ca-b358-4c8a-9699-4b2d050ac7c8/6e1ca5ca-b358-4c8a-9699-4b2d050ac7c8.zarr/3/.zarray']
      ]::text[][]
    );
commit;

