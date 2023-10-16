UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/02/16-55-37.452_mkngff/67757b3b-c9ef-42c1-a3e8-6cf2531da1c3.zarr' where image in (select id from Image where fileset = 4053165);

begin;
    select mkngff_fileset(
      4053165,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/02/16-55-37.452_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/02/16-55-37.452_mkngff/67757b3b-c9ef-42c1-a3e8-6cf2531da1c3.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/67757b3b-c9ef-42c1-a3e8-6cf2531da1c3/67757b3b-c9ef-42c1-a3e8-6cf2531da1c3.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/02/16-55-37.452_mkngff/67757b3b-c9ef-42c1-a3e8-6cf2531da1c3.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/67757b3b-c9ef-42c1-a3e8-6cf2531da1c3/67757b3b-c9ef-42c1-a3e8-6cf2531da1c3.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/02/16-55-37.452_mkngff/67757b3b-c9ef-42c1-a3e8-6cf2531da1c3.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/67757b3b-c9ef-42c1-a3e8-6cf2531da1c3/67757b3b-c9ef-42c1-a3e8-6cf2531da1c3.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/02/16-55-37.452_mkngff/67757b3b-c9ef-42c1-a3e8-6cf2531da1c3.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/67757b3b-c9ef-42c1-a3e8-6cf2531da1c3/67757b3b-c9ef-42c1-a3e8-6cf2531da1c3.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/02/16-55-37.452_mkngff/67757b3b-c9ef-42c1-a3e8-6cf2531da1c3.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/67757b3b-c9ef-42c1-a3e8-6cf2531da1c3/67757b3b-c9ef-42c1-a3e8-6cf2531da1c3.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/02/16-55-37.452_mkngff/67757b3b-c9ef-42c1-a3e8-6cf2531da1c3.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/67757b3b-c9ef-42c1-a3e8-6cf2531da1c3/67757b3b-c9ef-42c1-a3e8-6cf2531da1c3.zarr/3/.zarray']
      ]::text[][]
    );
commit;

