UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/05-00-19.391_mkngff/00602c54-e3bd-406c-83fd-a802b58182b0.zarr' where image in (select id from Image where fileset = 4053371);

begin;
    select mkngff_fileset(
      4053371,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/05-00-19.391_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/05-00-19.391_mkngff/00602c54-e3bd-406c-83fd-a802b58182b0.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/00602c54-e3bd-406c-83fd-a802b58182b0/00602c54-e3bd-406c-83fd-a802b58182b0.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/05-00-19.391_mkngff/00602c54-e3bd-406c-83fd-a802b58182b0.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/00602c54-e3bd-406c-83fd-a802b58182b0/00602c54-e3bd-406c-83fd-a802b58182b0.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/05-00-19.391_mkngff/00602c54-e3bd-406c-83fd-a802b58182b0.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/00602c54-e3bd-406c-83fd-a802b58182b0/00602c54-e3bd-406c-83fd-a802b58182b0.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/05-00-19.391_mkngff/00602c54-e3bd-406c-83fd-a802b58182b0.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/00602c54-e3bd-406c-83fd-a802b58182b0/00602c54-e3bd-406c-83fd-a802b58182b0.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/05-00-19.391_mkngff/00602c54-e3bd-406c-83fd-a802b58182b0.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/00602c54-e3bd-406c-83fd-a802b58182b0/00602c54-e3bd-406c-83fd-a802b58182b0.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/05-00-19.391_mkngff/00602c54-e3bd-406c-83fd-a802b58182b0.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/00602c54-e3bd-406c-83fd-a802b58182b0/00602c54-e3bd-406c-83fd-a802b58182b0.zarr/3/.zarray']
      ]::text[][]
    );
commit;

