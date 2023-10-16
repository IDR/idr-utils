UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/18-25-18.082_mkngff/f87fc5f8-6acc-4fe4-a747-ca529555bef7.zarr' where image in (select id from Image where fileset = 4053181);

begin;
    select mkngff_fileset(
      4053181,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/18-25-18.082_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/18-25-18.082_mkngff/f87fc5f8-6acc-4fe4-a747-ca529555bef7.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/f87fc5f8-6acc-4fe4-a747-ca529555bef7/f87fc5f8-6acc-4fe4-a747-ca529555bef7.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/18-25-18.082_mkngff/f87fc5f8-6acc-4fe4-a747-ca529555bef7.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/f87fc5f8-6acc-4fe4-a747-ca529555bef7/f87fc5f8-6acc-4fe4-a747-ca529555bef7.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/18-25-18.082_mkngff/f87fc5f8-6acc-4fe4-a747-ca529555bef7.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/f87fc5f8-6acc-4fe4-a747-ca529555bef7/f87fc5f8-6acc-4fe4-a747-ca529555bef7.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/18-25-18.082_mkngff/f87fc5f8-6acc-4fe4-a747-ca529555bef7.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/f87fc5f8-6acc-4fe4-a747-ca529555bef7/f87fc5f8-6acc-4fe4-a747-ca529555bef7.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/18-25-18.082_mkngff/f87fc5f8-6acc-4fe4-a747-ca529555bef7.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/f87fc5f8-6acc-4fe4-a747-ca529555bef7/f87fc5f8-6acc-4fe4-a747-ca529555bef7.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/18-25-18.082_mkngff/f87fc5f8-6acc-4fe4-a747-ca529555bef7.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/f87fc5f8-6acc-4fe4-a747-ca529555bef7/f87fc5f8-6acc-4fe4-a747-ca529555bef7.zarr/3/.zarray']
      ]::text[][]
    );
commit;

