UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/11-57-28.518_mkngff/809bff5e-5f93-4a12-9652-7273682541cb.zarr' where image in (select id from Image where fileset = 4053464);

begin;
    select mkngff_fileset(
      4053464,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/11-57-28.518_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/11-57-28.518_mkngff/809bff5e-5f93-4a12-9652-7273682541cb.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/809bff5e-5f93-4a12-9652-7273682541cb/809bff5e-5f93-4a12-9652-7273682541cb.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/11-57-28.518_mkngff/809bff5e-5f93-4a12-9652-7273682541cb.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/809bff5e-5f93-4a12-9652-7273682541cb/809bff5e-5f93-4a12-9652-7273682541cb.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/11-57-28.518_mkngff/809bff5e-5f93-4a12-9652-7273682541cb.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/809bff5e-5f93-4a12-9652-7273682541cb/809bff5e-5f93-4a12-9652-7273682541cb.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/11-57-28.518_mkngff/809bff5e-5f93-4a12-9652-7273682541cb.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/809bff5e-5f93-4a12-9652-7273682541cb/809bff5e-5f93-4a12-9652-7273682541cb.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/11-57-28.518_mkngff/809bff5e-5f93-4a12-9652-7273682541cb.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/809bff5e-5f93-4a12-9652-7273682541cb/809bff5e-5f93-4a12-9652-7273682541cb.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/11-57-28.518_mkngff/809bff5e-5f93-4a12-9652-7273682541cb.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/809bff5e-5f93-4a12-9652-7273682541cb/809bff5e-5f93-4a12-9652-7273682541cb.zarr/3/.zarray']
      ]::text[][]
    );
commit;

