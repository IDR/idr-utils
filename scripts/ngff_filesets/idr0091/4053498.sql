UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/14-20-21.343_mkngff/4ad27aab-4481-4ef8-af8f-8176e746490b.zarr' where image in (select id from Image where fileset = 4053498);

begin;
    select mkngff_fileset(
      4053498,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/14-20-21.343_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/14-20-21.343_mkngff/4ad27aab-4481-4ef8-af8f-8176e746490b.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/4ad27aab-4481-4ef8-af8f-8176e746490b/4ad27aab-4481-4ef8-af8f-8176e746490b.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/14-20-21.343_mkngff/4ad27aab-4481-4ef8-af8f-8176e746490b.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/4ad27aab-4481-4ef8-af8f-8176e746490b/4ad27aab-4481-4ef8-af8f-8176e746490b.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/14-20-21.343_mkngff/4ad27aab-4481-4ef8-af8f-8176e746490b.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/4ad27aab-4481-4ef8-af8f-8176e746490b/4ad27aab-4481-4ef8-af8f-8176e746490b.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/14-20-21.343_mkngff/4ad27aab-4481-4ef8-af8f-8176e746490b.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/4ad27aab-4481-4ef8-af8f-8176e746490b/4ad27aab-4481-4ef8-af8f-8176e746490b.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/14-20-21.343_mkngff/4ad27aab-4481-4ef8-af8f-8176e746490b.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/4ad27aab-4481-4ef8-af8f-8176e746490b/4ad27aab-4481-4ef8-af8f-8176e746490b.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/14-20-21.343_mkngff/4ad27aab-4481-4ef8-af8f-8176e746490b.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/4ad27aab-4481-4ef8-af8f-8176e746490b/4ad27aab-4481-4ef8-af8f-8176e746490b.zarr/3/.zarray']
      ]::text[][]
    );
commit;

