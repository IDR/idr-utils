UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/02/23-27-04.320_mkngff/66ea4f5e-cbe2-4b0e-841b-d4362c573e48.zarr' where image in (select id from Image where fileset = 4053320);

begin;
    select mkngff_fileset(
      4053320,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/02/23-27-04.320_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/02/23-27-04.320_mkngff/66ea4f5e-cbe2-4b0e-841b-d4362c573e48.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/66ea4f5e-cbe2-4b0e-841b-d4362c573e48/66ea4f5e-cbe2-4b0e-841b-d4362c573e48.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/02/23-27-04.320_mkngff/66ea4f5e-cbe2-4b0e-841b-d4362c573e48.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/66ea4f5e-cbe2-4b0e-841b-d4362c573e48/66ea4f5e-cbe2-4b0e-841b-d4362c573e48.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/02/23-27-04.320_mkngff/66ea4f5e-cbe2-4b0e-841b-d4362c573e48.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/66ea4f5e-cbe2-4b0e-841b-d4362c573e48/66ea4f5e-cbe2-4b0e-841b-d4362c573e48.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/02/23-27-04.320_mkngff/66ea4f5e-cbe2-4b0e-841b-d4362c573e48.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/66ea4f5e-cbe2-4b0e-841b-d4362c573e48/66ea4f5e-cbe2-4b0e-841b-d4362c573e48.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/02/23-27-04.320_mkngff/66ea4f5e-cbe2-4b0e-841b-d4362c573e48.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/66ea4f5e-cbe2-4b0e-841b-d4362c573e48/66ea4f5e-cbe2-4b0e-841b-d4362c573e48.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/02/23-27-04.320_mkngff/66ea4f5e-cbe2-4b0e-841b-d4362c573e48.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/66ea4f5e-cbe2-4b0e-841b-d4362c573e48/66ea4f5e-cbe2-4b0e-841b-d4362c573e48.zarr/3/.zarray']
      ]::text[][]
    );
commit;

