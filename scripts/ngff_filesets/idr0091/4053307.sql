UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/22-12-44.903_mkngff/f7c44d8e-1447-4958-af4e-aa439be1b9c5.zarr' where image in (select id from Image where fileset = 4053307);

begin;
    select mkngff_fileset(
      4053307,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/22-12-44.903_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/22-12-44.903_mkngff/f7c44d8e-1447-4958-af4e-aa439be1b9c5.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/f7c44d8e-1447-4958-af4e-aa439be1b9c5/f7c44d8e-1447-4958-af4e-aa439be1b9c5.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/22-12-44.903_mkngff/f7c44d8e-1447-4958-af4e-aa439be1b9c5.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/f7c44d8e-1447-4958-af4e-aa439be1b9c5/f7c44d8e-1447-4958-af4e-aa439be1b9c5.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/22-12-44.903_mkngff/f7c44d8e-1447-4958-af4e-aa439be1b9c5.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/f7c44d8e-1447-4958-af4e-aa439be1b9c5/f7c44d8e-1447-4958-af4e-aa439be1b9c5.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/22-12-44.903_mkngff/f7c44d8e-1447-4958-af4e-aa439be1b9c5.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/f7c44d8e-1447-4958-af4e-aa439be1b9c5/f7c44d8e-1447-4958-af4e-aa439be1b9c5.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/22-12-44.903_mkngff/f7c44d8e-1447-4958-af4e-aa439be1b9c5.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/f7c44d8e-1447-4958-af4e-aa439be1b9c5/f7c44d8e-1447-4958-af4e-aa439be1b9c5.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/22-12-44.903_mkngff/f7c44d8e-1447-4958-af4e-aa439be1b9c5.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/f7c44d8e-1447-4958-af4e-aa439be1b9c5/f7c44d8e-1447-4958-af4e-aa439be1b9c5.zarr/3/.zarray']
      ]::text[][]
    );
commit;

