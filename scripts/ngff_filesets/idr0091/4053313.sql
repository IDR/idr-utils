UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/22-42-48.835_mkngff/d18b1914-c3ec-4667-b2e7-e9ddc6fbd567.zarr' where image in (select id from Image where fileset = 4053313);

begin;
    select mkngff_fileset(
      4053313,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/22-42-48.835_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/22-42-48.835_mkngff/d18b1914-c3ec-4667-b2e7-e9ddc6fbd567.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d18b1914-c3ec-4667-b2e7-e9ddc6fbd567/d18b1914-c3ec-4667-b2e7-e9ddc6fbd567.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/22-42-48.835_mkngff/d18b1914-c3ec-4667-b2e7-e9ddc6fbd567.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d18b1914-c3ec-4667-b2e7-e9ddc6fbd567/d18b1914-c3ec-4667-b2e7-e9ddc6fbd567.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/22-42-48.835_mkngff/d18b1914-c3ec-4667-b2e7-e9ddc6fbd567.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d18b1914-c3ec-4667-b2e7-e9ddc6fbd567/d18b1914-c3ec-4667-b2e7-e9ddc6fbd567.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/22-42-48.835_mkngff/d18b1914-c3ec-4667-b2e7-e9ddc6fbd567.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d18b1914-c3ec-4667-b2e7-e9ddc6fbd567/d18b1914-c3ec-4667-b2e7-e9ddc6fbd567.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/22-42-48.835_mkngff/d18b1914-c3ec-4667-b2e7-e9ddc6fbd567.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d18b1914-c3ec-4667-b2e7-e9ddc6fbd567/d18b1914-c3ec-4667-b2e7-e9ddc6fbd567.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/22-42-48.835_mkngff/d18b1914-c3ec-4667-b2e7-e9ddc6fbd567.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d18b1914-c3ec-4667-b2e7-e9ddc6fbd567/d18b1914-c3ec-4667-b2e7-e9ddc6fbd567.zarr/3/.zarray']
      ]::text[][]
    );
commit;

