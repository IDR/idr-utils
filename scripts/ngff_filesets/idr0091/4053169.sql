UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/02/17-17-02.315_mkngff/b4025cca-1298-47e7-aa1e-215c5a57a6fc.zarr' where image in (select id from Image where fileset = 4053169);

begin;
    select mkngff_fileset(
      4053169,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/02/17-17-02.315_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/02/17-17-02.315_mkngff/b4025cca-1298-47e7-aa1e-215c5a57a6fc.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b4025cca-1298-47e7-aa1e-215c5a57a6fc/b4025cca-1298-47e7-aa1e-215c5a57a6fc.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/02/17-17-02.315_mkngff/b4025cca-1298-47e7-aa1e-215c5a57a6fc.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b4025cca-1298-47e7-aa1e-215c5a57a6fc/b4025cca-1298-47e7-aa1e-215c5a57a6fc.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/02/17-17-02.315_mkngff/b4025cca-1298-47e7-aa1e-215c5a57a6fc.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b4025cca-1298-47e7-aa1e-215c5a57a6fc/b4025cca-1298-47e7-aa1e-215c5a57a6fc.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/02/17-17-02.315_mkngff/b4025cca-1298-47e7-aa1e-215c5a57a6fc.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b4025cca-1298-47e7-aa1e-215c5a57a6fc/b4025cca-1298-47e7-aa1e-215c5a57a6fc.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/02/17-17-02.315_mkngff/b4025cca-1298-47e7-aa1e-215c5a57a6fc.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b4025cca-1298-47e7-aa1e-215c5a57a6fc/b4025cca-1298-47e7-aa1e-215c5a57a6fc.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/02/17-17-02.315_mkngff/b4025cca-1298-47e7-aa1e-215c5a57a6fc.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b4025cca-1298-47e7-aa1e-215c5a57a6fc/b4025cca-1298-47e7-aa1e-215c5a57a6fc.zarr/3/.zarray']
      ]::text[][]
    );
commit;

