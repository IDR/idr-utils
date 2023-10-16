UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/16-18-40.583_mkngff/2f1e862b-c9d3-420a-a2a0-75573bf9033e.zarr' where image in (select id from Image where fileset = 4053158);

begin;
    select mkngff_fileset(
      4053158,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/16-18-40.583_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/16-18-40.583_mkngff/2f1e862b-c9d3-420a-a2a0-75573bf9033e.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/2f1e862b-c9d3-420a-a2a0-75573bf9033e/2f1e862b-c9d3-420a-a2a0-75573bf9033e.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/16-18-40.583_mkngff/2f1e862b-c9d3-420a-a2a0-75573bf9033e.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/2f1e862b-c9d3-420a-a2a0-75573bf9033e/2f1e862b-c9d3-420a-a2a0-75573bf9033e.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/16-18-40.583_mkngff/2f1e862b-c9d3-420a-a2a0-75573bf9033e.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/2f1e862b-c9d3-420a-a2a0-75573bf9033e/2f1e862b-c9d3-420a-a2a0-75573bf9033e.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/16-18-40.583_mkngff/2f1e862b-c9d3-420a-a2a0-75573bf9033e.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/2f1e862b-c9d3-420a-a2a0-75573bf9033e/2f1e862b-c9d3-420a-a2a0-75573bf9033e.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/16-18-40.583_mkngff/2f1e862b-c9d3-420a-a2a0-75573bf9033e.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/2f1e862b-c9d3-420a-a2a0-75573bf9033e/2f1e862b-c9d3-420a-a2a0-75573bf9033e.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/16-18-40.583_mkngff/2f1e862b-c9d3-420a-a2a0-75573bf9033e.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/2f1e862b-c9d3-420a-a2a0-75573bf9033e/2f1e862b-c9d3-420a-a2a0-75573bf9033e.zarr/3/.zarray']
      ]::text[][]
    );
commit;

