UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/17-25-49.312_mkngff/39bbfc18-4ac3-4f26-b598-93676824e1de.zarr' where image in (select id from Image where fileset = 4053830);

begin;
    select mkngff_fileset(
      4053830,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/17-25-49.312_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/17-25-49.312_mkngff/39bbfc18-4ac3-4f26-b598-93676824e1de.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/39bbfc18-4ac3-4f26-b598-93676824e1de/39bbfc18-4ac3-4f26-b598-93676824e1de.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/17-25-49.312_mkngff/39bbfc18-4ac3-4f26-b598-93676824e1de.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/39bbfc18-4ac3-4f26-b598-93676824e1de/39bbfc18-4ac3-4f26-b598-93676824e1de.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/17-25-49.312_mkngff/39bbfc18-4ac3-4f26-b598-93676824e1de.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/39bbfc18-4ac3-4f26-b598-93676824e1de/39bbfc18-4ac3-4f26-b598-93676824e1de.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/17-25-49.312_mkngff/39bbfc18-4ac3-4f26-b598-93676824e1de.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/39bbfc18-4ac3-4f26-b598-93676824e1de/39bbfc18-4ac3-4f26-b598-93676824e1de.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/17-25-49.312_mkngff/39bbfc18-4ac3-4f26-b598-93676824e1de.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/39bbfc18-4ac3-4f26-b598-93676824e1de/39bbfc18-4ac3-4f26-b598-93676824e1de.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/17-25-49.312_mkngff/39bbfc18-4ac3-4f26-b598-93676824e1de.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/39bbfc18-4ac3-4f26-b598-93676824e1de/39bbfc18-4ac3-4f26-b598-93676824e1de.zarr/3/.zarray']
      ]::text[][]
    );
commit;

