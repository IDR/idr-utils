UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/07-56-45.997_mkngff/d4bd1c06-240f-4c0e-a0d3-bc6000572b0c.zarr' where image in (select id from Image where fileset = 4053396);

begin;
    select mkngff_fileset(
      4053396,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/07-56-45.997_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/07-56-45.997_mkngff/d4bd1c06-240f-4c0e-a0d3-bc6000572b0c.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d4bd1c06-240f-4c0e-a0d3-bc6000572b0c/d4bd1c06-240f-4c0e-a0d3-bc6000572b0c.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/07-56-45.997_mkngff/d4bd1c06-240f-4c0e-a0d3-bc6000572b0c.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d4bd1c06-240f-4c0e-a0d3-bc6000572b0c/d4bd1c06-240f-4c0e-a0d3-bc6000572b0c.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/07-56-45.997_mkngff/d4bd1c06-240f-4c0e-a0d3-bc6000572b0c.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d4bd1c06-240f-4c0e-a0d3-bc6000572b0c/d4bd1c06-240f-4c0e-a0d3-bc6000572b0c.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/07-56-45.997_mkngff/d4bd1c06-240f-4c0e-a0d3-bc6000572b0c.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d4bd1c06-240f-4c0e-a0d3-bc6000572b0c/d4bd1c06-240f-4c0e-a0d3-bc6000572b0c.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/07-56-45.997_mkngff/d4bd1c06-240f-4c0e-a0d3-bc6000572b0c.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d4bd1c06-240f-4c0e-a0d3-bc6000572b0c/d4bd1c06-240f-4c0e-a0d3-bc6000572b0c.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/07-56-45.997_mkngff/d4bd1c06-240f-4c0e-a0d3-bc6000572b0c.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d4bd1c06-240f-4c0e-a0d3-bc6000572b0c/d4bd1c06-240f-4c0e-a0d3-bc6000572b0c.zarr/3/.zarray']
      ]::text[][]
    );
commit;

