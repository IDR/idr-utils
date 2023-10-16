UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/01-35-40.485_mkngff/4ae6202a-11ab-4c23-bb0f-39fe7a2574b5.zarr' where image in (select id from Image where fileset = 4053342);

begin;
    select mkngff_fileset(
      4053342,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/01-35-40.485_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/01-35-40.485_mkngff/4ae6202a-11ab-4c23-bb0f-39fe7a2574b5.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/4ae6202a-11ab-4c23-bb0f-39fe7a2574b5/4ae6202a-11ab-4c23-bb0f-39fe7a2574b5.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/01-35-40.485_mkngff/4ae6202a-11ab-4c23-bb0f-39fe7a2574b5.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/4ae6202a-11ab-4c23-bb0f-39fe7a2574b5/4ae6202a-11ab-4c23-bb0f-39fe7a2574b5.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/01-35-40.485_mkngff/4ae6202a-11ab-4c23-bb0f-39fe7a2574b5.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/4ae6202a-11ab-4c23-bb0f-39fe7a2574b5/4ae6202a-11ab-4c23-bb0f-39fe7a2574b5.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/01-35-40.485_mkngff/4ae6202a-11ab-4c23-bb0f-39fe7a2574b5.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/4ae6202a-11ab-4c23-bb0f-39fe7a2574b5/4ae6202a-11ab-4c23-bb0f-39fe7a2574b5.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/01-35-40.485_mkngff/4ae6202a-11ab-4c23-bb0f-39fe7a2574b5.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/4ae6202a-11ab-4c23-bb0f-39fe7a2574b5/4ae6202a-11ab-4c23-bb0f-39fe7a2574b5.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/01-35-40.485_mkngff/4ae6202a-11ab-4c23-bb0f-39fe7a2574b5.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/4ae6202a-11ab-4c23-bb0f-39fe7a2574b5/4ae6202a-11ab-4c23-bb0f-39fe7a2574b5.zarr/3/.zarray']
      ]::text[][]
    );
commit;

