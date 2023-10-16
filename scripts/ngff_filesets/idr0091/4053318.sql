UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/02/23-14-27.187_mkngff/220ea5ea-f393-4ab9-b91b-f38f814b5fd1.zarr' where image in (select id from Image where fileset = 4053318);

begin;
    select mkngff_fileset(
      4053318,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/02/23-14-27.187_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/02/23-14-27.187_mkngff/220ea5ea-f393-4ab9-b91b-f38f814b5fd1.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/220ea5ea-f393-4ab9-b91b-f38f814b5fd1/220ea5ea-f393-4ab9-b91b-f38f814b5fd1.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/02/23-14-27.187_mkngff/220ea5ea-f393-4ab9-b91b-f38f814b5fd1.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/220ea5ea-f393-4ab9-b91b-f38f814b5fd1/220ea5ea-f393-4ab9-b91b-f38f814b5fd1.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/02/23-14-27.187_mkngff/220ea5ea-f393-4ab9-b91b-f38f814b5fd1.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/220ea5ea-f393-4ab9-b91b-f38f814b5fd1/220ea5ea-f393-4ab9-b91b-f38f814b5fd1.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/02/23-14-27.187_mkngff/220ea5ea-f393-4ab9-b91b-f38f814b5fd1.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/220ea5ea-f393-4ab9-b91b-f38f814b5fd1/220ea5ea-f393-4ab9-b91b-f38f814b5fd1.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/02/23-14-27.187_mkngff/220ea5ea-f393-4ab9-b91b-f38f814b5fd1.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/220ea5ea-f393-4ab9-b91b-f38f814b5fd1/220ea5ea-f393-4ab9-b91b-f38f814b5fd1.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/02/23-14-27.187_mkngff/220ea5ea-f393-4ab9-b91b-f38f814b5fd1.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/220ea5ea-f393-4ab9-b91b-f38f814b5fd1/220ea5ea-f393-4ab9-b91b-f38f814b5fd1.zarr/3/.zarray']
      ]::text[][]
    );
commit;

