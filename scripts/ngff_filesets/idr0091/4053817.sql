UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/16-54-14.064_mkngff/d5bb5c9b-af61-4ce9-a33b-8b94aace901d.zarr' where image in (select id from Image where fileset = 4053817);

begin;
    select mkngff_fileset(
      4053817,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/16-54-14.064_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/16-54-14.064_mkngff/d5bb5c9b-af61-4ce9-a33b-8b94aace901d.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d5bb5c9b-af61-4ce9-a33b-8b94aace901d/d5bb5c9b-af61-4ce9-a33b-8b94aace901d.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/16-54-14.064_mkngff/d5bb5c9b-af61-4ce9-a33b-8b94aace901d.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d5bb5c9b-af61-4ce9-a33b-8b94aace901d/d5bb5c9b-af61-4ce9-a33b-8b94aace901d.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/16-54-14.064_mkngff/d5bb5c9b-af61-4ce9-a33b-8b94aace901d.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d5bb5c9b-af61-4ce9-a33b-8b94aace901d/d5bb5c9b-af61-4ce9-a33b-8b94aace901d.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/16-54-14.064_mkngff/d5bb5c9b-af61-4ce9-a33b-8b94aace901d.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d5bb5c9b-af61-4ce9-a33b-8b94aace901d/d5bb5c9b-af61-4ce9-a33b-8b94aace901d.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/16-54-14.064_mkngff/d5bb5c9b-af61-4ce9-a33b-8b94aace901d.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d5bb5c9b-af61-4ce9-a33b-8b94aace901d/d5bb5c9b-af61-4ce9-a33b-8b94aace901d.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/16-54-14.064_mkngff/d5bb5c9b-af61-4ce9-a33b-8b94aace901d.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d5bb5c9b-af61-4ce9-a33b-8b94aace901d/d5bb5c9b-af61-4ce9-a33b-8b94aace901d.zarr/3/.zarray']
      ]::text[][]
    );
commit;

