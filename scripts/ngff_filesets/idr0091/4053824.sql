UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/17-11-20.925_mkngff/bcea9261-3fb5-48bf-90a3-ca21f6006055.zarr' where image in (select id from Image where fileset = 4053824);

begin;
    select mkngff_fileset(
      4053824,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/17-11-20.925_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/17-11-20.925_mkngff/bcea9261-3fb5-48bf-90a3-ca21f6006055.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/bcea9261-3fb5-48bf-90a3-ca21f6006055/bcea9261-3fb5-48bf-90a3-ca21f6006055.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/17-11-20.925_mkngff/bcea9261-3fb5-48bf-90a3-ca21f6006055.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/bcea9261-3fb5-48bf-90a3-ca21f6006055/bcea9261-3fb5-48bf-90a3-ca21f6006055.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/17-11-20.925_mkngff/bcea9261-3fb5-48bf-90a3-ca21f6006055.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/bcea9261-3fb5-48bf-90a3-ca21f6006055/bcea9261-3fb5-48bf-90a3-ca21f6006055.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/17-11-20.925_mkngff/bcea9261-3fb5-48bf-90a3-ca21f6006055.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/bcea9261-3fb5-48bf-90a3-ca21f6006055/bcea9261-3fb5-48bf-90a3-ca21f6006055.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/17-11-20.925_mkngff/bcea9261-3fb5-48bf-90a3-ca21f6006055.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/bcea9261-3fb5-48bf-90a3-ca21f6006055/bcea9261-3fb5-48bf-90a3-ca21f6006055.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/17-11-20.925_mkngff/bcea9261-3fb5-48bf-90a3-ca21f6006055.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/bcea9261-3fb5-48bf-90a3-ca21f6006055/bcea9261-3fb5-48bf-90a3-ca21f6006055.zarr/3/.zarray']
      ]::text[][]
    );
commit;

