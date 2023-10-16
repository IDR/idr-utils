UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/13-19-06.275_mkngff/6dd41f8a-d762-411a-ae2b-7eab888b6aac.zarr' where image in (select id from Image where fileset = 4053487);

begin;
    select mkngff_fileset(
      4053487,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/13-19-06.275_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/13-19-06.275_mkngff/6dd41f8a-d762-411a-ae2b-7eab888b6aac.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/6dd41f8a-d762-411a-ae2b-7eab888b6aac/6dd41f8a-d762-411a-ae2b-7eab888b6aac.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/13-19-06.275_mkngff/6dd41f8a-d762-411a-ae2b-7eab888b6aac.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/6dd41f8a-d762-411a-ae2b-7eab888b6aac/6dd41f8a-d762-411a-ae2b-7eab888b6aac.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/13-19-06.275_mkngff/6dd41f8a-d762-411a-ae2b-7eab888b6aac.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/6dd41f8a-d762-411a-ae2b-7eab888b6aac/6dd41f8a-d762-411a-ae2b-7eab888b6aac.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/13-19-06.275_mkngff/6dd41f8a-d762-411a-ae2b-7eab888b6aac.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/6dd41f8a-d762-411a-ae2b-7eab888b6aac/6dd41f8a-d762-411a-ae2b-7eab888b6aac.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/13-19-06.275_mkngff/6dd41f8a-d762-411a-ae2b-7eab888b6aac.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/6dd41f8a-d762-411a-ae2b-7eab888b6aac/6dd41f8a-d762-411a-ae2b-7eab888b6aac.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/13-19-06.275_mkngff/6dd41f8a-d762-411a-ae2b-7eab888b6aac.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/6dd41f8a-d762-411a-ae2b-7eab888b6aac/6dd41f8a-d762-411a-ae2b-7eab888b6aac.zarr/3/.zarray']
      ]::text[][]
    );
commit;

