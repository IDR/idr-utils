UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/12-23-47.161_mkngff/0044dd95-07e1-4937-938b-dde53ebbb719.zarr' where image in (select id from Image where fileset = 4053473);

begin;
    select mkngff_fileset(
      4053473,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/12-23-47.161_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/12-23-47.161_mkngff/0044dd95-07e1-4937-938b-dde53ebbb719.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/0044dd95-07e1-4937-938b-dde53ebbb719/0044dd95-07e1-4937-938b-dde53ebbb719.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/12-23-47.161_mkngff/0044dd95-07e1-4937-938b-dde53ebbb719.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/0044dd95-07e1-4937-938b-dde53ebbb719/0044dd95-07e1-4937-938b-dde53ebbb719.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/12-23-47.161_mkngff/0044dd95-07e1-4937-938b-dde53ebbb719.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/0044dd95-07e1-4937-938b-dde53ebbb719/0044dd95-07e1-4937-938b-dde53ebbb719.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/12-23-47.161_mkngff/0044dd95-07e1-4937-938b-dde53ebbb719.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/0044dd95-07e1-4937-938b-dde53ebbb719/0044dd95-07e1-4937-938b-dde53ebbb719.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/12-23-47.161_mkngff/0044dd95-07e1-4937-938b-dde53ebbb719.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/0044dd95-07e1-4937-938b-dde53ebbb719/0044dd95-07e1-4937-938b-dde53ebbb719.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/12-23-47.161_mkngff/0044dd95-07e1-4937-938b-dde53ebbb719.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/0044dd95-07e1-4937-938b-dde53ebbb719/0044dd95-07e1-4937-938b-dde53ebbb719.zarr/3/.zarray']
      ]::text[][]
    );
commit;

