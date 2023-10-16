UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/18-46-42.952_mkngff/7c17808f-946f-4268-9a95-96e6bd1c1538.zarr' where image in (select id from Image where fileset = 4053864);

begin;
    select mkngff_fileset(
      4053864,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/18-46-42.952_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/18-46-42.952_mkngff/7c17808f-946f-4268-9a95-96e6bd1c1538.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7c17808f-946f-4268-9a95-96e6bd1c1538/7c17808f-946f-4268-9a95-96e6bd1c1538.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/18-46-42.952_mkngff/7c17808f-946f-4268-9a95-96e6bd1c1538.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7c17808f-946f-4268-9a95-96e6bd1c1538/7c17808f-946f-4268-9a95-96e6bd1c1538.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/18-46-42.952_mkngff/7c17808f-946f-4268-9a95-96e6bd1c1538.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7c17808f-946f-4268-9a95-96e6bd1c1538/7c17808f-946f-4268-9a95-96e6bd1c1538.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/18-46-42.952_mkngff/7c17808f-946f-4268-9a95-96e6bd1c1538.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7c17808f-946f-4268-9a95-96e6bd1c1538/7c17808f-946f-4268-9a95-96e6bd1c1538.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/18-46-42.952_mkngff/7c17808f-946f-4268-9a95-96e6bd1c1538.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7c17808f-946f-4268-9a95-96e6bd1c1538/7c17808f-946f-4268-9a95-96e6bd1c1538.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/18-46-42.952_mkngff/7c17808f-946f-4268-9a95-96e6bd1c1538.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7c17808f-946f-4268-9a95-96e6bd1c1538/7c17808f-946f-4268-9a95-96e6bd1c1538.zarr/3/.zarray']
      ]::text[][]
    );
commit;

