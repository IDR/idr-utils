UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/00-29-00.121_mkngff/c5256bd7-0fac-4c7d-9b3c-75f690e5c7ac.zarr' where image in (select id from Image where fileset = 4053331);

begin;
    select mkngff_fileset(
      4053331,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/00-29-00.121_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/00-29-00.121_mkngff/c5256bd7-0fac-4c7d-9b3c-75f690e5c7ac.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/c5256bd7-0fac-4c7d-9b3c-75f690e5c7ac/c5256bd7-0fac-4c7d-9b3c-75f690e5c7ac.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/00-29-00.121_mkngff/c5256bd7-0fac-4c7d-9b3c-75f690e5c7ac.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/c5256bd7-0fac-4c7d-9b3c-75f690e5c7ac/c5256bd7-0fac-4c7d-9b3c-75f690e5c7ac.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/00-29-00.121_mkngff/c5256bd7-0fac-4c7d-9b3c-75f690e5c7ac.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/c5256bd7-0fac-4c7d-9b3c-75f690e5c7ac/c5256bd7-0fac-4c7d-9b3c-75f690e5c7ac.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/00-29-00.121_mkngff/c5256bd7-0fac-4c7d-9b3c-75f690e5c7ac.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/c5256bd7-0fac-4c7d-9b3c-75f690e5c7ac/c5256bd7-0fac-4c7d-9b3c-75f690e5c7ac.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/00-29-00.121_mkngff/c5256bd7-0fac-4c7d-9b3c-75f690e5c7ac.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/c5256bd7-0fac-4c7d-9b3c-75f690e5c7ac/c5256bd7-0fac-4c7d-9b3c-75f690e5c7ac.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/00-29-00.121_mkngff/c5256bd7-0fac-4c7d-9b3c-75f690e5c7ac.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/c5256bd7-0fac-4c7d-9b3c-75f690e5c7ac/c5256bd7-0fac-4c7d-9b3c-75f690e5c7ac.zarr/3/.zarray']
      ]::text[][]
    );
commit;

