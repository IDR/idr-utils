UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/04-47-34.903_mkngff/419d1811-ca75-4dbd-81c4-e303d79c8e3d.zarr' where image in (select id from Image where fileset = 4053369);

begin;
    select mkngff_fileset(
      4053369,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/04-47-34.903_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/04-47-34.903_mkngff/419d1811-ca75-4dbd-81c4-e303d79c8e3d.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/419d1811-ca75-4dbd-81c4-e303d79c8e3d/419d1811-ca75-4dbd-81c4-e303d79c8e3d.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/04-47-34.903_mkngff/419d1811-ca75-4dbd-81c4-e303d79c8e3d.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/419d1811-ca75-4dbd-81c4-e303d79c8e3d/419d1811-ca75-4dbd-81c4-e303d79c8e3d.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/04-47-34.903_mkngff/419d1811-ca75-4dbd-81c4-e303d79c8e3d.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/419d1811-ca75-4dbd-81c4-e303d79c8e3d/419d1811-ca75-4dbd-81c4-e303d79c8e3d.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/04-47-34.903_mkngff/419d1811-ca75-4dbd-81c4-e303d79c8e3d.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/419d1811-ca75-4dbd-81c4-e303d79c8e3d/419d1811-ca75-4dbd-81c4-e303d79c8e3d.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/04-47-34.903_mkngff/419d1811-ca75-4dbd-81c4-e303d79c8e3d.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/419d1811-ca75-4dbd-81c4-e303d79c8e3d/419d1811-ca75-4dbd-81c4-e303d79c8e3d.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/04-47-34.903_mkngff/419d1811-ca75-4dbd-81c4-e303d79c8e3d.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/419d1811-ca75-4dbd-81c4-e303d79c8e3d/419d1811-ca75-4dbd-81c4-e303d79c8e3d.zarr/3/.zarray']
      ]::text[][]
    );
commit;

