UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/00-12-09.061_mkngff/fa2da092-9d80-44ff-b8b0-e1617d121834.zarr' where image in (select id from Image where fileset = 4053328);

begin;
    select mkngff_fileset(
      4053328,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/00-12-09.061_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/00-12-09.061_mkngff/fa2da092-9d80-44ff-b8b0-e1617d121834.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/fa2da092-9d80-44ff-b8b0-e1617d121834/fa2da092-9d80-44ff-b8b0-e1617d121834.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/00-12-09.061_mkngff/fa2da092-9d80-44ff-b8b0-e1617d121834.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/fa2da092-9d80-44ff-b8b0-e1617d121834/fa2da092-9d80-44ff-b8b0-e1617d121834.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/00-12-09.061_mkngff/fa2da092-9d80-44ff-b8b0-e1617d121834.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/fa2da092-9d80-44ff-b8b0-e1617d121834/fa2da092-9d80-44ff-b8b0-e1617d121834.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/00-12-09.061_mkngff/fa2da092-9d80-44ff-b8b0-e1617d121834.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/fa2da092-9d80-44ff-b8b0-e1617d121834/fa2da092-9d80-44ff-b8b0-e1617d121834.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/00-12-09.061_mkngff/fa2da092-9d80-44ff-b8b0-e1617d121834.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/fa2da092-9d80-44ff-b8b0-e1617d121834/fa2da092-9d80-44ff-b8b0-e1617d121834.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/00-12-09.061_mkngff/fa2da092-9d80-44ff-b8b0-e1617d121834.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/fa2da092-9d80-44ff-b8b0-e1617d121834/fa2da092-9d80-44ff-b8b0-e1617d121834.zarr/3/.zarray']
      ]::text[][]
    );
commit;

