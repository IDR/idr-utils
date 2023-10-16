UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/17-28-24.941_mkngff/90bf7295-3986-49ea-9276-25564e199ca2.zarr' where image in (select id from Image where fileset = 4053831);

begin;
    select mkngff_fileset(
      4053831,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/17-28-24.941_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/17-28-24.941_mkngff/90bf7295-3986-49ea-9276-25564e199ca2.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/90bf7295-3986-49ea-9276-25564e199ca2/90bf7295-3986-49ea-9276-25564e199ca2.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/17-28-24.941_mkngff/90bf7295-3986-49ea-9276-25564e199ca2.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/90bf7295-3986-49ea-9276-25564e199ca2/90bf7295-3986-49ea-9276-25564e199ca2.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/17-28-24.941_mkngff/90bf7295-3986-49ea-9276-25564e199ca2.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/90bf7295-3986-49ea-9276-25564e199ca2/90bf7295-3986-49ea-9276-25564e199ca2.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/17-28-24.941_mkngff/90bf7295-3986-49ea-9276-25564e199ca2.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/90bf7295-3986-49ea-9276-25564e199ca2/90bf7295-3986-49ea-9276-25564e199ca2.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/17-28-24.941_mkngff/90bf7295-3986-49ea-9276-25564e199ca2.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/90bf7295-3986-49ea-9276-25564e199ca2/90bf7295-3986-49ea-9276-25564e199ca2.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/17-28-24.941_mkngff/90bf7295-3986-49ea-9276-25564e199ca2.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/90bf7295-3986-49ea-9276-25564e199ca2/90bf7295-3986-49ea-9276-25564e199ca2.zarr/3/.zarray']
      ]::text[][]
    );
commit;

