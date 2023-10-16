UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/18-25-15.176_mkngff/8b1bebcc-0b8a-47de-94fa-bb28ee27cd2b.zarr' where image in (select id from Image where fileset = 4053855);

begin;
    select mkngff_fileset(
      4053855,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/18-25-15.176_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/18-25-15.176_mkngff/8b1bebcc-0b8a-47de-94fa-bb28ee27cd2b.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/8b1bebcc-0b8a-47de-94fa-bb28ee27cd2b/8b1bebcc-0b8a-47de-94fa-bb28ee27cd2b.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/18-25-15.176_mkngff/8b1bebcc-0b8a-47de-94fa-bb28ee27cd2b.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/8b1bebcc-0b8a-47de-94fa-bb28ee27cd2b/8b1bebcc-0b8a-47de-94fa-bb28ee27cd2b.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/18-25-15.176_mkngff/8b1bebcc-0b8a-47de-94fa-bb28ee27cd2b.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/8b1bebcc-0b8a-47de-94fa-bb28ee27cd2b/8b1bebcc-0b8a-47de-94fa-bb28ee27cd2b.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/18-25-15.176_mkngff/8b1bebcc-0b8a-47de-94fa-bb28ee27cd2b.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/8b1bebcc-0b8a-47de-94fa-bb28ee27cd2b/8b1bebcc-0b8a-47de-94fa-bb28ee27cd2b.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/18-25-15.176_mkngff/8b1bebcc-0b8a-47de-94fa-bb28ee27cd2b.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/8b1bebcc-0b8a-47de-94fa-bb28ee27cd2b/8b1bebcc-0b8a-47de-94fa-bb28ee27cd2b.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/18-25-15.176_mkngff/8b1bebcc-0b8a-47de-94fa-bb28ee27cd2b.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/8b1bebcc-0b8a-47de-94fa-bb28ee27cd2b/8b1bebcc-0b8a-47de-94fa-bb28ee27cd2b.zarr/3/.zarray']
      ]::text[][]
    );
commit;

