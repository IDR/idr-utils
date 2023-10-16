UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/03-59-38.381_mkngff/034b03ca-44b1-4751-9a25-2cafc666750f.zarr' where image in (select id from Image where fileset = 4053364);

begin;
    select mkngff_fileset(
      4053364,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/03-59-38.381_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/03-59-38.381_mkngff/034b03ca-44b1-4751-9a25-2cafc666750f.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/034b03ca-44b1-4751-9a25-2cafc666750f/034b03ca-44b1-4751-9a25-2cafc666750f.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/03-59-38.381_mkngff/034b03ca-44b1-4751-9a25-2cafc666750f.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/034b03ca-44b1-4751-9a25-2cafc666750f/034b03ca-44b1-4751-9a25-2cafc666750f.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/03-59-38.381_mkngff/034b03ca-44b1-4751-9a25-2cafc666750f.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/034b03ca-44b1-4751-9a25-2cafc666750f/034b03ca-44b1-4751-9a25-2cafc666750f.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/03-59-38.381_mkngff/034b03ca-44b1-4751-9a25-2cafc666750f.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/034b03ca-44b1-4751-9a25-2cafc666750f/034b03ca-44b1-4751-9a25-2cafc666750f.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/03-59-38.381_mkngff/034b03ca-44b1-4751-9a25-2cafc666750f.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/034b03ca-44b1-4751-9a25-2cafc666750f/034b03ca-44b1-4751-9a25-2cafc666750f.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/03-59-38.381_mkngff/034b03ca-44b1-4751-9a25-2cafc666750f.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/034b03ca-44b1-4751-9a25-2cafc666750f/034b03ca-44b1-4751-9a25-2cafc666750f.zarr/3/.zarray']
      ]::text[][]
    );
commit;

