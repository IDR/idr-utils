UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/16-51-45.455_mkngff/94b3056a-1743-407f-b058-50266e6cb089.zarr' where image in (select id from Image where fileset = 4053816);

begin;
    select mkngff_fileset(
      4053816,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/16-51-45.455_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/16-51-45.455_mkngff/94b3056a-1743-407f-b058-50266e6cb089.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/94b3056a-1743-407f-b058-50266e6cb089/94b3056a-1743-407f-b058-50266e6cb089.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/16-51-45.455_mkngff/94b3056a-1743-407f-b058-50266e6cb089.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/94b3056a-1743-407f-b058-50266e6cb089/94b3056a-1743-407f-b058-50266e6cb089.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/16-51-45.455_mkngff/94b3056a-1743-407f-b058-50266e6cb089.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/94b3056a-1743-407f-b058-50266e6cb089/94b3056a-1743-407f-b058-50266e6cb089.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/16-51-45.455_mkngff/94b3056a-1743-407f-b058-50266e6cb089.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/94b3056a-1743-407f-b058-50266e6cb089/94b3056a-1743-407f-b058-50266e6cb089.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/16-51-45.455_mkngff/94b3056a-1743-407f-b058-50266e6cb089.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/94b3056a-1743-407f-b058-50266e6cb089/94b3056a-1743-407f-b058-50266e6cb089.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/16-51-45.455_mkngff/94b3056a-1743-407f-b058-50266e6cb089.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/94b3056a-1743-407f-b058-50266e6cb089/94b3056a-1743-407f-b058-50266e6cb089.zarr/3/.zarray']
      ]::text[][]
    );
commit;

