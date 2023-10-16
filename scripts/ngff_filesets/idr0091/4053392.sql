UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/07-28-01.497_mkngff/86f8a1f1-2de2-4704-9530-95192951397c.zarr' where image in (select id from Image where fileset = 4053392);

begin;
    select mkngff_fileset(
      4053392,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/07-28-01.497_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/07-28-01.497_mkngff/86f8a1f1-2de2-4704-9530-95192951397c.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/86f8a1f1-2de2-4704-9530-95192951397c/86f8a1f1-2de2-4704-9530-95192951397c.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/07-28-01.497_mkngff/86f8a1f1-2de2-4704-9530-95192951397c.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/86f8a1f1-2de2-4704-9530-95192951397c/86f8a1f1-2de2-4704-9530-95192951397c.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/07-28-01.497_mkngff/86f8a1f1-2de2-4704-9530-95192951397c.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/86f8a1f1-2de2-4704-9530-95192951397c/86f8a1f1-2de2-4704-9530-95192951397c.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/07-28-01.497_mkngff/86f8a1f1-2de2-4704-9530-95192951397c.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/86f8a1f1-2de2-4704-9530-95192951397c/86f8a1f1-2de2-4704-9530-95192951397c.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/07-28-01.497_mkngff/86f8a1f1-2de2-4704-9530-95192951397c.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/86f8a1f1-2de2-4704-9530-95192951397c/86f8a1f1-2de2-4704-9530-95192951397c.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/07-28-01.497_mkngff/86f8a1f1-2de2-4704-9530-95192951397c.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/86f8a1f1-2de2-4704-9530-95192951397c/86f8a1f1-2de2-4704-9530-95192951397c.zarr/3/.zarray']
      ]::text[][]
    );
commit;

