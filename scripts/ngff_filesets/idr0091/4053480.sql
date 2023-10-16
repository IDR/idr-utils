UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/12-43-39.613_mkngff/ea06f699-19a5-48be-b2fb-e84849ee3094.zarr' where image in (select id from Image where fileset = 4053480);

begin;
    select mkngff_fileset(
      4053480,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/12-43-39.613_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/12-43-39.613_mkngff/ea06f699-19a5-48be-b2fb-e84849ee3094.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/ea06f699-19a5-48be-b2fb-e84849ee3094/ea06f699-19a5-48be-b2fb-e84849ee3094.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/12-43-39.613_mkngff/ea06f699-19a5-48be-b2fb-e84849ee3094.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/ea06f699-19a5-48be-b2fb-e84849ee3094/ea06f699-19a5-48be-b2fb-e84849ee3094.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/12-43-39.613_mkngff/ea06f699-19a5-48be-b2fb-e84849ee3094.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/ea06f699-19a5-48be-b2fb-e84849ee3094/ea06f699-19a5-48be-b2fb-e84849ee3094.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/12-43-39.613_mkngff/ea06f699-19a5-48be-b2fb-e84849ee3094.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/ea06f699-19a5-48be-b2fb-e84849ee3094/ea06f699-19a5-48be-b2fb-e84849ee3094.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/12-43-39.613_mkngff/ea06f699-19a5-48be-b2fb-e84849ee3094.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/ea06f699-19a5-48be-b2fb-e84849ee3094/ea06f699-19a5-48be-b2fb-e84849ee3094.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/12-43-39.613_mkngff/ea06f699-19a5-48be-b2fb-e84849ee3094.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/ea06f699-19a5-48be-b2fb-e84849ee3094/ea06f699-19a5-48be-b2fb-e84849ee3094.zarr/3/.zarray']
      ]::text[][]
    );
commit;

