UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/00-06-30.987_mkngff/fc60f3d2-6ad9-4797-ae90-135d7f52bdeb.zarr' where image in (select id from Image where fileset = 4053327);

begin;
    select mkngff_fileset(
      4053327,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/00-06-30.987_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/00-06-30.987_mkngff/fc60f3d2-6ad9-4797-ae90-135d7f52bdeb.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/fc60f3d2-6ad9-4797-ae90-135d7f52bdeb/fc60f3d2-6ad9-4797-ae90-135d7f52bdeb.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/00-06-30.987_mkngff/fc60f3d2-6ad9-4797-ae90-135d7f52bdeb.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/fc60f3d2-6ad9-4797-ae90-135d7f52bdeb/fc60f3d2-6ad9-4797-ae90-135d7f52bdeb.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/00-06-30.987_mkngff/fc60f3d2-6ad9-4797-ae90-135d7f52bdeb.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/fc60f3d2-6ad9-4797-ae90-135d7f52bdeb/fc60f3d2-6ad9-4797-ae90-135d7f52bdeb.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/00-06-30.987_mkngff/fc60f3d2-6ad9-4797-ae90-135d7f52bdeb.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/fc60f3d2-6ad9-4797-ae90-135d7f52bdeb/fc60f3d2-6ad9-4797-ae90-135d7f52bdeb.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/00-06-30.987_mkngff/fc60f3d2-6ad9-4797-ae90-135d7f52bdeb.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/fc60f3d2-6ad9-4797-ae90-135d7f52bdeb/fc60f3d2-6ad9-4797-ae90-135d7f52bdeb.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/00-06-30.987_mkngff/fc60f3d2-6ad9-4797-ae90-135d7f52bdeb.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/fc60f3d2-6ad9-4797-ae90-135d7f52bdeb/fc60f3d2-6ad9-4797-ae90-135d7f52bdeb.zarr/3/.zarray']
      ]::text[][]
    );
commit;

