UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/13-24-40.641_mkngff/5f602edb-9d01-453c-9d76-81da629defaf.zarr' where image in (select id from Image where fileset = 4053488);

begin;
    select mkngff_fileset(
      4053488,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/13-24-40.641_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/13-24-40.641_mkngff/5f602edb-9d01-453c-9d76-81da629defaf.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/5f602edb-9d01-453c-9d76-81da629defaf/5f602edb-9d01-453c-9d76-81da629defaf.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/13-24-40.641_mkngff/5f602edb-9d01-453c-9d76-81da629defaf.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/5f602edb-9d01-453c-9d76-81da629defaf/5f602edb-9d01-453c-9d76-81da629defaf.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/13-24-40.641_mkngff/5f602edb-9d01-453c-9d76-81da629defaf.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/5f602edb-9d01-453c-9d76-81da629defaf/5f602edb-9d01-453c-9d76-81da629defaf.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/13-24-40.641_mkngff/5f602edb-9d01-453c-9d76-81da629defaf.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/5f602edb-9d01-453c-9d76-81da629defaf/5f602edb-9d01-453c-9d76-81da629defaf.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/13-24-40.641_mkngff/5f602edb-9d01-453c-9d76-81da629defaf.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/5f602edb-9d01-453c-9d76-81da629defaf/5f602edb-9d01-453c-9d76-81da629defaf.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/13-24-40.641_mkngff/5f602edb-9d01-453c-9d76-81da629defaf.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/5f602edb-9d01-453c-9d76-81da629defaf/5f602edb-9d01-453c-9d76-81da629defaf.zarr/3/.zarray']
      ]::text[][]
    );
commit;

