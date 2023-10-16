UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/16-16-06.199_mkngff/6b6762ea-c23f-48bb-bd06-9289be37087d.zarr' where image in (select id from Image where fileset = 4053801);

begin;
    select mkngff_fileset(
      4053801,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/16-16-06.199_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/16-16-06.199_mkngff/6b6762ea-c23f-48bb-bd06-9289be37087d.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/6b6762ea-c23f-48bb-bd06-9289be37087d/6b6762ea-c23f-48bb-bd06-9289be37087d.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/16-16-06.199_mkngff/6b6762ea-c23f-48bb-bd06-9289be37087d.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/6b6762ea-c23f-48bb-bd06-9289be37087d/6b6762ea-c23f-48bb-bd06-9289be37087d.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/16-16-06.199_mkngff/6b6762ea-c23f-48bb-bd06-9289be37087d.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/6b6762ea-c23f-48bb-bd06-9289be37087d/6b6762ea-c23f-48bb-bd06-9289be37087d.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/16-16-06.199_mkngff/6b6762ea-c23f-48bb-bd06-9289be37087d.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/6b6762ea-c23f-48bb-bd06-9289be37087d/6b6762ea-c23f-48bb-bd06-9289be37087d.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/16-16-06.199_mkngff/6b6762ea-c23f-48bb-bd06-9289be37087d.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/6b6762ea-c23f-48bb-bd06-9289be37087d/6b6762ea-c23f-48bb-bd06-9289be37087d.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/16-16-06.199_mkngff/6b6762ea-c23f-48bb-bd06-9289be37087d.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/6b6762ea-c23f-48bb-bd06-9289be37087d/6b6762ea-c23f-48bb-bd06-9289be37087d.zarr/3/.zarray']
      ]::text[][]
    );
commit;

