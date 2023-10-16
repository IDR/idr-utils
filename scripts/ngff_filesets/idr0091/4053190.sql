UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/19-14-48.658_mkngff/53a5f851-119b-4b5b-972b-a30c550be296.zarr' where image in (select id from Image where fileset = 4053190);

begin;
    select mkngff_fileset(
      4053190,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/19-14-48.658_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/19-14-48.658_mkngff/53a5f851-119b-4b5b-972b-a30c550be296.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/53a5f851-119b-4b5b-972b-a30c550be296/53a5f851-119b-4b5b-972b-a30c550be296.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/19-14-48.658_mkngff/53a5f851-119b-4b5b-972b-a30c550be296.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/53a5f851-119b-4b5b-972b-a30c550be296/53a5f851-119b-4b5b-972b-a30c550be296.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/19-14-48.658_mkngff/53a5f851-119b-4b5b-972b-a30c550be296.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/53a5f851-119b-4b5b-972b-a30c550be296/53a5f851-119b-4b5b-972b-a30c550be296.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/19-14-48.658_mkngff/53a5f851-119b-4b5b-972b-a30c550be296.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/53a5f851-119b-4b5b-972b-a30c550be296/53a5f851-119b-4b5b-972b-a30c550be296.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/19-14-48.658_mkngff/53a5f851-119b-4b5b-972b-a30c550be296.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/53a5f851-119b-4b5b-972b-a30c550be296/53a5f851-119b-4b5b-972b-a30c550be296.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/19-14-48.658_mkngff/53a5f851-119b-4b5b-972b-a30c550be296.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/53a5f851-119b-4b5b-972b-a30c550be296/53a5f851-119b-4b5b-972b-a30c550be296.zarr/3/.zarray']
      ]::text[][]
    );
commit;

