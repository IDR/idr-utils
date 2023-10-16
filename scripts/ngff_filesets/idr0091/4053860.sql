UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/18-36-54.615_mkngff/5932b1f0-9b37-4ff7-8d4f-a0c56617ca55.zarr' where image in (select id from Image where fileset = 4053860);

begin;
    select mkngff_fileset(
      4053860,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/18-36-54.615_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/18-36-54.615_mkngff/5932b1f0-9b37-4ff7-8d4f-a0c56617ca55.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/5932b1f0-9b37-4ff7-8d4f-a0c56617ca55/5932b1f0-9b37-4ff7-8d4f-a0c56617ca55.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/18-36-54.615_mkngff/5932b1f0-9b37-4ff7-8d4f-a0c56617ca55.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/5932b1f0-9b37-4ff7-8d4f-a0c56617ca55/5932b1f0-9b37-4ff7-8d4f-a0c56617ca55.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/18-36-54.615_mkngff/5932b1f0-9b37-4ff7-8d4f-a0c56617ca55.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/5932b1f0-9b37-4ff7-8d4f-a0c56617ca55/5932b1f0-9b37-4ff7-8d4f-a0c56617ca55.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/18-36-54.615_mkngff/5932b1f0-9b37-4ff7-8d4f-a0c56617ca55.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/5932b1f0-9b37-4ff7-8d4f-a0c56617ca55/5932b1f0-9b37-4ff7-8d4f-a0c56617ca55.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/18-36-54.615_mkngff/5932b1f0-9b37-4ff7-8d4f-a0c56617ca55.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/5932b1f0-9b37-4ff7-8d4f-a0c56617ca55/5932b1f0-9b37-4ff7-8d4f-a0c56617ca55.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/18-36-54.615_mkngff/5932b1f0-9b37-4ff7-8d4f-a0c56617ca55.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/5932b1f0-9b37-4ff7-8d4f-a0c56617ca55/5932b1f0-9b37-4ff7-8d4f-a0c56617ca55.zarr/3/.zarray']
      ]::text[][]
    );
commit;

