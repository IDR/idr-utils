UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/21-56-55.094_mkngff/58f14094-7eb9-43c2-b0fb-ff179f9192f6.zarr' where image in (select id from Image where fileset = 4053304);

begin;
    select mkngff_fileset(
      4053304,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/21-56-55.094_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/21-56-55.094_mkngff/58f14094-7eb9-43c2-b0fb-ff179f9192f6.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/58f14094-7eb9-43c2-b0fb-ff179f9192f6/58f14094-7eb9-43c2-b0fb-ff179f9192f6.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/21-56-55.094_mkngff/58f14094-7eb9-43c2-b0fb-ff179f9192f6.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/58f14094-7eb9-43c2-b0fb-ff179f9192f6/58f14094-7eb9-43c2-b0fb-ff179f9192f6.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/21-56-55.094_mkngff/58f14094-7eb9-43c2-b0fb-ff179f9192f6.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/58f14094-7eb9-43c2-b0fb-ff179f9192f6/58f14094-7eb9-43c2-b0fb-ff179f9192f6.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/21-56-55.094_mkngff/58f14094-7eb9-43c2-b0fb-ff179f9192f6.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/58f14094-7eb9-43c2-b0fb-ff179f9192f6/58f14094-7eb9-43c2-b0fb-ff179f9192f6.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/21-56-55.094_mkngff/58f14094-7eb9-43c2-b0fb-ff179f9192f6.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/58f14094-7eb9-43c2-b0fb-ff179f9192f6/58f14094-7eb9-43c2-b0fb-ff179f9192f6.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/21-56-55.094_mkngff/58f14094-7eb9-43c2-b0fb-ff179f9192f6.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/58f14094-7eb9-43c2-b0fb-ff179f9192f6/58f14094-7eb9-43c2-b0fb-ff179f9192f6.zarr/3/.zarray']
      ]::text[][]
    );
commit;

