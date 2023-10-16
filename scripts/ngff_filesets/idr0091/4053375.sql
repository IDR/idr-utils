UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/05-28-05.140_mkngff/9b7a14e3-f364-4498-b52a-fda222b9f268.zarr' where image in (select id from Image where fileset = 4053375);

begin;
    select mkngff_fileset(
      4053375,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/05-28-05.140_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/05-28-05.140_mkngff/9b7a14e3-f364-4498-b52a-fda222b9f268.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/9b7a14e3-f364-4498-b52a-fda222b9f268/9b7a14e3-f364-4498-b52a-fda222b9f268.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/05-28-05.140_mkngff/9b7a14e3-f364-4498-b52a-fda222b9f268.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/9b7a14e3-f364-4498-b52a-fda222b9f268/9b7a14e3-f364-4498-b52a-fda222b9f268.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/05-28-05.140_mkngff/9b7a14e3-f364-4498-b52a-fda222b9f268.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/9b7a14e3-f364-4498-b52a-fda222b9f268/9b7a14e3-f364-4498-b52a-fda222b9f268.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/05-28-05.140_mkngff/9b7a14e3-f364-4498-b52a-fda222b9f268.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/9b7a14e3-f364-4498-b52a-fda222b9f268/9b7a14e3-f364-4498-b52a-fda222b9f268.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/05-28-05.140_mkngff/9b7a14e3-f364-4498-b52a-fda222b9f268.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/9b7a14e3-f364-4498-b52a-fda222b9f268/9b7a14e3-f364-4498-b52a-fda222b9f268.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/05-28-05.140_mkngff/9b7a14e3-f364-4498-b52a-fda222b9f268.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/9b7a14e3-f364-4498-b52a-fda222b9f268/9b7a14e3-f364-4498-b52a-fda222b9f268.zarr/3/.zarray']
      ]::text[][]
    );
commit;

