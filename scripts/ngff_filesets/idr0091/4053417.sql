UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/09-06-48.942_mkngff/d3c4af7d-0822-42f1-a57c-570da4469de5.zarr' where image in (select id from Image where fileset = 4053417);

begin;
    select mkngff_fileset(
      4053417,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/09-06-48.942_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/09-06-48.942_mkngff/d3c4af7d-0822-42f1-a57c-570da4469de5.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d3c4af7d-0822-42f1-a57c-570da4469de5/d3c4af7d-0822-42f1-a57c-570da4469de5.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/09-06-48.942_mkngff/d3c4af7d-0822-42f1-a57c-570da4469de5.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d3c4af7d-0822-42f1-a57c-570da4469de5/d3c4af7d-0822-42f1-a57c-570da4469de5.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/09-06-48.942_mkngff/d3c4af7d-0822-42f1-a57c-570da4469de5.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d3c4af7d-0822-42f1-a57c-570da4469de5/d3c4af7d-0822-42f1-a57c-570da4469de5.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/09-06-48.942_mkngff/d3c4af7d-0822-42f1-a57c-570da4469de5.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d3c4af7d-0822-42f1-a57c-570da4469de5/d3c4af7d-0822-42f1-a57c-570da4469de5.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/09-06-48.942_mkngff/d3c4af7d-0822-42f1-a57c-570da4469de5.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d3c4af7d-0822-42f1-a57c-570da4469de5/d3c4af7d-0822-42f1-a57c-570da4469de5.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/09-06-48.942_mkngff/d3c4af7d-0822-42f1-a57c-570da4469de5.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d3c4af7d-0822-42f1-a57c-570da4469de5/d3c4af7d-0822-42f1-a57c-570da4469de5.zarr/3/.zarray']
      ]::text[][]
    );
commit;

