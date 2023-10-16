UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/13-41-01.123_mkngff/655e7401-ba8d-4ba3-bcad-f62eaa23c869.zarr' where image in (select id from Image where fileset = 4053491);

begin;
    select mkngff_fileset(
      4053491,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/13-41-01.123_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/13-41-01.123_mkngff/655e7401-ba8d-4ba3-bcad-f62eaa23c869.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/655e7401-ba8d-4ba3-bcad-f62eaa23c869/655e7401-ba8d-4ba3-bcad-f62eaa23c869.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/13-41-01.123_mkngff/655e7401-ba8d-4ba3-bcad-f62eaa23c869.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/655e7401-ba8d-4ba3-bcad-f62eaa23c869/655e7401-ba8d-4ba3-bcad-f62eaa23c869.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/13-41-01.123_mkngff/655e7401-ba8d-4ba3-bcad-f62eaa23c869.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/655e7401-ba8d-4ba3-bcad-f62eaa23c869/655e7401-ba8d-4ba3-bcad-f62eaa23c869.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/13-41-01.123_mkngff/655e7401-ba8d-4ba3-bcad-f62eaa23c869.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/655e7401-ba8d-4ba3-bcad-f62eaa23c869/655e7401-ba8d-4ba3-bcad-f62eaa23c869.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/13-41-01.123_mkngff/655e7401-ba8d-4ba3-bcad-f62eaa23c869.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/655e7401-ba8d-4ba3-bcad-f62eaa23c869/655e7401-ba8d-4ba3-bcad-f62eaa23c869.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/13-41-01.123_mkngff/655e7401-ba8d-4ba3-bcad-f62eaa23c869.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/655e7401-ba8d-4ba3-bcad-f62eaa23c869/655e7401-ba8d-4ba3-bcad-f62eaa23c869.zarr/3/.zarray']
      ]::text[][]
    );
commit;

