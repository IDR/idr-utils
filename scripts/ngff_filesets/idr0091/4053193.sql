UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/19-32-48.863_mkngff/e294fbe1-7f38-43c0-8f33-7640147258eb.zarr' where image in (select id from Image where fileset = 4053193);

begin;
    select mkngff_fileset(
      4053193,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/19-32-48.863_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/19-32-48.863_mkngff/e294fbe1-7f38-43c0-8f33-7640147258eb.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e294fbe1-7f38-43c0-8f33-7640147258eb/e294fbe1-7f38-43c0-8f33-7640147258eb.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/19-32-48.863_mkngff/e294fbe1-7f38-43c0-8f33-7640147258eb.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e294fbe1-7f38-43c0-8f33-7640147258eb/e294fbe1-7f38-43c0-8f33-7640147258eb.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/19-32-48.863_mkngff/e294fbe1-7f38-43c0-8f33-7640147258eb.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e294fbe1-7f38-43c0-8f33-7640147258eb/e294fbe1-7f38-43c0-8f33-7640147258eb.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/19-32-48.863_mkngff/e294fbe1-7f38-43c0-8f33-7640147258eb.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e294fbe1-7f38-43c0-8f33-7640147258eb/e294fbe1-7f38-43c0-8f33-7640147258eb.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/19-32-48.863_mkngff/e294fbe1-7f38-43c0-8f33-7640147258eb.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e294fbe1-7f38-43c0-8f33-7640147258eb/e294fbe1-7f38-43c0-8f33-7640147258eb.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/19-32-48.863_mkngff/e294fbe1-7f38-43c0-8f33-7640147258eb.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e294fbe1-7f38-43c0-8f33-7640147258eb/e294fbe1-7f38-43c0-8f33-7640147258eb.zarr/3/.zarray']
      ]::text[][]
    );
commit;

