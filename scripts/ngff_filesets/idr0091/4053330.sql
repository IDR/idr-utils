UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/00-23-46.614_mkngff/32f90acd-69c1-4c0a-bb0a-edb05d3b3a27.zarr' where image in (select id from Image where fileset = 4053330);

begin;
    select mkngff_fileset(
      4053330,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/00-23-46.614_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/00-23-46.614_mkngff/32f90acd-69c1-4c0a-bb0a-edb05d3b3a27.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/32f90acd-69c1-4c0a-bb0a-edb05d3b3a27/32f90acd-69c1-4c0a-bb0a-edb05d3b3a27.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/00-23-46.614_mkngff/32f90acd-69c1-4c0a-bb0a-edb05d3b3a27.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/32f90acd-69c1-4c0a-bb0a-edb05d3b3a27/32f90acd-69c1-4c0a-bb0a-edb05d3b3a27.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/00-23-46.614_mkngff/32f90acd-69c1-4c0a-bb0a-edb05d3b3a27.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/32f90acd-69c1-4c0a-bb0a-edb05d3b3a27/32f90acd-69c1-4c0a-bb0a-edb05d3b3a27.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/00-23-46.614_mkngff/32f90acd-69c1-4c0a-bb0a-edb05d3b3a27.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/32f90acd-69c1-4c0a-bb0a-edb05d3b3a27/32f90acd-69c1-4c0a-bb0a-edb05d3b3a27.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/00-23-46.614_mkngff/32f90acd-69c1-4c0a-bb0a-edb05d3b3a27.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/32f90acd-69c1-4c0a-bb0a-edb05d3b3a27/32f90acd-69c1-4c0a-bb0a-edb05d3b3a27.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/00-23-46.614_mkngff/32f90acd-69c1-4c0a-bb0a-edb05d3b3a27.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/32f90acd-69c1-4c0a-bb0a-edb05d3b3a27/32f90acd-69c1-4c0a-bb0a-edb05d3b3a27.zarr/3/.zarray']
      ]::text[][]
    );
commit;

