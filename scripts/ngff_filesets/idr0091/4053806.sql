UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/16-28-03.798_mkngff/27d6e17b-a0d7-4e76-b4fe-571296bd3406.zarr' where image in (select id from Image where fileset = 4053806);

begin;
    select mkngff_fileset(
      4053806,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/16-28-03.798_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/16-28-03.798_mkngff/27d6e17b-a0d7-4e76-b4fe-571296bd3406.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/27d6e17b-a0d7-4e76-b4fe-571296bd3406/27d6e17b-a0d7-4e76-b4fe-571296bd3406.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/16-28-03.798_mkngff/27d6e17b-a0d7-4e76-b4fe-571296bd3406.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/27d6e17b-a0d7-4e76-b4fe-571296bd3406/27d6e17b-a0d7-4e76-b4fe-571296bd3406.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/16-28-03.798_mkngff/27d6e17b-a0d7-4e76-b4fe-571296bd3406.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/27d6e17b-a0d7-4e76-b4fe-571296bd3406/27d6e17b-a0d7-4e76-b4fe-571296bd3406.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/16-28-03.798_mkngff/27d6e17b-a0d7-4e76-b4fe-571296bd3406.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/27d6e17b-a0d7-4e76-b4fe-571296bd3406/27d6e17b-a0d7-4e76-b4fe-571296bd3406.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/16-28-03.798_mkngff/27d6e17b-a0d7-4e76-b4fe-571296bd3406.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/27d6e17b-a0d7-4e76-b4fe-571296bd3406/27d6e17b-a0d7-4e76-b4fe-571296bd3406.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/16-28-03.798_mkngff/27d6e17b-a0d7-4e76-b4fe-571296bd3406.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/27d6e17b-a0d7-4e76-b4fe-571296bd3406/27d6e17b-a0d7-4e76-b4fe-571296bd3406.zarr/3/.zarray']
      ]::text[][]
    );
commit;

