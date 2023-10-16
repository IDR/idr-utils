UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/13-07-11.617_mkngff/bb0a8cd5-6df0-4b30-aa3f-fdaa54539acb.zarr' where image in (select id from Image where fileset = 4053485);

begin;
    select mkngff_fileset(
      4053485,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/13-07-11.617_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/13-07-11.617_mkngff/bb0a8cd5-6df0-4b30-aa3f-fdaa54539acb.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/bb0a8cd5-6df0-4b30-aa3f-fdaa54539acb/bb0a8cd5-6df0-4b30-aa3f-fdaa54539acb.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/13-07-11.617_mkngff/bb0a8cd5-6df0-4b30-aa3f-fdaa54539acb.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/bb0a8cd5-6df0-4b30-aa3f-fdaa54539acb/bb0a8cd5-6df0-4b30-aa3f-fdaa54539acb.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/13-07-11.617_mkngff/bb0a8cd5-6df0-4b30-aa3f-fdaa54539acb.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/bb0a8cd5-6df0-4b30-aa3f-fdaa54539acb/bb0a8cd5-6df0-4b30-aa3f-fdaa54539acb.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/13-07-11.617_mkngff/bb0a8cd5-6df0-4b30-aa3f-fdaa54539acb.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/bb0a8cd5-6df0-4b30-aa3f-fdaa54539acb/bb0a8cd5-6df0-4b30-aa3f-fdaa54539acb.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/13-07-11.617_mkngff/bb0a8cd5-6df0-4b30-aa3f-fdaa54539acb.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/bb0a8cd5-6df0-4b30-aa3f-fdaa54539acb/bb0a8cd5-6df0-4b30-aa3f-fdaa54539acb.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/13-07-11.617_mkngff/bb0a8cd5-6df0-4b30-aa3f-fdaa54539acb.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/bb0a8cd5-6df0-4b30-aa3f-fdaa54539acb/bb0a8cd5-6df0-4b30-aa3f-fdaa54539acb.zarr/3/.zarray']
      ]::text[][]
    );
commit;

