UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/16-58-50.639_mkngff/cdd63639-35cd-4aff-a238-1539543f4f2e.zarr' where image in (select id from Image where fileset = 4053819);

begin;
    select mkngff_fileset(
      4053819,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/16-58-50.639_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/16-58-50.639_mkngff/cdd63639-35cd-4aff-a238-1539543f4f2e.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/cdd63639-35cd-4aff-a238-1539543f4f2e/cdd63639-35cd-4aff-a238-1539543f4f2e.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/16-58-50.639_mkngff/cdd63639-35cd-4aff-a238-1539543f4f2e.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/cdd63639-35cd-4aff-a238-1539543f4f2e/cdd63639-35cd-4aff-a238-1539543f4f2e.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/16-58-50.639_mkngff/cdd63639-35cd-4aff-a238-1539543f4f2e.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/cdd63639-35cd-4aff-a238-1539543f4f2e/cdd63639-35cd-4aff-a238-1539543f4f2e.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/16-58-50.639_mkngff/cdd63639-35cd-4aff-a238-1539543f4f2e.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/cdd63639-35cd-4aff-a238-1539543f4f2e/cdd63639-35cd-4aff-a238-1539543f4f2e.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/16-58-50.639_mkngff/cdd63639-35cd-4aff-a238-1539543f4f2e.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/cdd63639-35cd-4aff-a238-1539543f4f2e/cdd63639-35cd-4aff-a238-1539543f4f2e.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/16-58-50.639_mkngff/cdd63639-35cd-4aff-a238-1539543f4f2e.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/cdd63639-35cd-4aff-a238-1539543f4f2e/cdd63639-35cd-4aff-a238-1539543f4f2e.zarr/3/.zarray']
      ]::text[][]
    );
commit;

