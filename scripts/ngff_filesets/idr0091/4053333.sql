UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/00-40-07.244_mkngff/bed80a2b-04bb-45e2-a25d-4dbe7436db15.zarr' where image in (select id from Image where fileset = 4053333);

begin;
    select mkngff_fileset(
      4053333,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/00-40-07.244_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/00-40-07.244_mkngff/bed80a2b-04bb-45e2-a25d-4dbe7436db15.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/bed80a2b-04bb-45e2-a25d-4dbe7436db15/bed80a2b-04bb-45e2-a25d-4dbe7436db15.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/00-40-07.244_mkngff/bed80a2b-04bb-45e2-a25d-4dbe7436db15.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/bed80a2b-04bb-45e2-a25d-4dbe7436db15/bed80a2b-04bb-45e2-a25d-4dbe7436db15.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/00-40-07.244_mkngff/bed80a2b-04bb-45e2-a25d-4dbe7436db15.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/bed80a2b-04bb-45e2-a25d-4dbe7436db15/bed80a2b-04bb-45e2-a25d-4dbe7436db15.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/00-40-07.244_mkngff/bed80a2b-04bb-45e2-a25d-4dbe7436db15.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/bed80a2b-04bb-45e2-a25d-4dbe7436db15/bed80a2b-04bb-45e2-a25d-4dbe7436db15.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/00-40-07.244_mkngff/bed80a2b-04bb-45e2-a25d-4dbe7436db15.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/bed80a2b-04bb-45e2-a25d-4dbe7436db15/bed80a2b-04bb-45e2-a25d-4dbe7436db15.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/00-40-07.244_mkngff/bed80a2b-04bb-45e2-a25d-4dbe7436db15.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/bed80a2b-04bb-45e2-a25d-4dbe7436db15/bed80a2b-04bb-45e2-a25d-4dbe7436db15.zarr/3/.zarray']
      ]::text[][]
    );
commit;

