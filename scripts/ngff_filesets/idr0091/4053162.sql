UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/16-41-07.634_mkngff/2df22e7b-55b7-47a1-bb82-239a069db47f.zarr' where image in (select id from Image where fileset = 4053162);

begin;
    select mkngff_fileset(
      4053162,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/16-41-07.634_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/16-41-07.634_mkngff/2df22e7b-55b7-47a1-bb82-239a069db47f.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/2df22e7b-55b7-47a1-bb82-239a069db47f/2df22e7b-55b7-47a1-bb82-239a069db47f.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/16-41-07.634_mkngff/2df22e7b-55b7-47a1-bb82-239a069db47f.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/2df22e7b-55b7-47a1-bb82-239a069db47f/2df22e7b-55b7-47a1-bb82-239a069db47f.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/16-41-07.634_mkngff/2df22e7b-55b7-47a1-bb82-239a069db47f.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/2df22e7b-55b7-47a1-bb82-239a069db47f/2df22e7b-55b7-47a1-bb82-239a069db47f.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/16-41-07.634_mkngff/2df22e7b-55b7-47a1-bb82-239a069db47f.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/2df22e7b-55b7-47a1-bb82-239a069db47f/2df22e7b-55b7-47a1-bb82-239a069db47f.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/16-41-07.634_mkngff/2df22e7b-55b7-47a1-bb82-239a069db47f.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/2df22e7b-55b7-47a1-bb82-239a069db47f/2df22e7b-55b7-47a1-bb82-239a069db47f.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/16-41-07.634_mkngff/2df22e7b-55b7-47a1-bb82-239a069db47f.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/2df22e7b-55b7-47a1-bb82-239a069db47f/2df22e7b-55b7-47a1-bb82-239a069db47f.zarr/3/.zarray']
      ]::text[][]
    );
commit;

