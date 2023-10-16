UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/11-35-45.043_mkngff/a75de4aa-0fb1-49b1-bbf8-386e793fc8f8.zarr' where image in (select id from Image where fileset = 4053456);

begin;
    select mkngff_fileset(
      4053456,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/11-35-45.043_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/11-35-45.043_mkngff/a75de4aa-0fb1-49b1-bbf8-386e793fc8f8.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/a75de4aa-0fb1-49b1-bbf8-386e793fc8f8/a75de4aa-0fb1-49b1-bbf8-386e793fc8f8.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/11-35-45.043_mkngff/a75de4aa-0fb1-49b1-bbf8-386e793fc8f8.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/a75de4aa-0fb1-49b1-bbf8-386e793fc8f8/a75de4aa-0fb1-49b1-bbf8-386e793fc8f8.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/11-35-45.043_mkngff/a75de4aa-0fb1-49b1-bbf8-386e793fc8f8.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/a75de4aa-0fb1-49b1-bbf8-386e793fc8f8/a75de4aa-0fb1-49b1-bbf8-386e793fc8f8.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/11-35-45.043_mkngff/a75de4aa-0fb1-49b1-bbf8-386e793fc8f8.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/a75de4aa-0fb1-49b1-bbf8-386e793fc8f8/a75de4aa-0fb1-49b1-bbf8-386e793fc8f8.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/11-35-45.043_mkngff/a75de4aa-0fb1-49b1-bbf8-386e793fc8f8.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/a75de4aa-0fb1-49b1-bbf8-386e793fc8f8/a75de4aa-0fb1-49b1-bbf8-386e793fc8f8.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/11-35-45.043_mkngff/a75de4aa-0fb1-49b1-bbf8-386e793fc8f8.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/a75de4aa-0fb1-49b1-bbf8-386e793fc8f8/a75de4aa-0fb1-49b1-bbf8-386e793fc8f8.zarr/3/.zarray']
      ]::text[][]
    );
commit;

