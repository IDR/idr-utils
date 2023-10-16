UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/17-45-04.743_mkngff/e8d039bc-2383-4280-8281-8749fef8ee35.zarr' where image in (select id from Image where fileset = 4053838);

begin;
    select mkngff_fileset(
      4053838,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/17-45-04.743_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/17-45-04.743_mkngff/e8d039bc-2383-4280-8281-8749fef8ee35.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e8d039bc-2383-4280-8281-8749fef8ee35/e8d039bc-2383-4280-8281-8749fef8ee35.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/17-45-04.743_mkngff/e8d039bc-2383-4280-8281-8749fef8ee35.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e8d039bc-2383-4280-8281-8749fef8ee35/e8d039bc-2383-4280-8281-8749fef8ee35.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/17-45-04.743_mkngff/e8d039bc-2383-4280-8281-8749fef8ee35.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e8d039bc-2383-4280-8281-8749fef8ee35/e8d039bc-2383-4280-8281-8749fef8ee35.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/17-45-04.743_mkngff/e8d039bc-2383-4280-8281-8749fef8ee35.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e8d039bc-2383-4280-8281-8749fef8ee35/e8d039bc-2383-4280-8281-8749fef8ee35.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/17-45-04.743_mkngff/e8d039bc-2383-4280-8281-8749fef8ee35.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e8d039bc-2383-4280-8281-8749fef8ee35/e8d039bc-2383-4280-8281-8749fef8ee35.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/17-45-04.743_mkngff/e8d039bc-2383-4280-8281-8749fef8ee35.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e8d039bc-2383-4280-8281-8749fef8ee35/e8d039bc-2383-4280-8281-8749fef8ee35.zarr/3/.zarray']
      ]::text[][]
    );
commit;

