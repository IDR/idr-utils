UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/23-00-58.921_mkngff/08f9303d-b58d-49f9-9655-b858d7218443.zarr' where image in (select id from Image where fileset = 4053316);

begin;
    select mkngff_fileset(
      4053316,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/23-00-58.921_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/23-00-58.921_mkngff/08f9303d-b58d-49f9-9655-b858d7218443.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/08f9303d-b58d-49f9-9655-b858d7218443/08f9303d-b58d-49f9-9655-b858d7218443.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/23-00-58.921_mkngff/08f9303d-b58d-49f9-9655-b858d7218443.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/08f9303d-b58d-49f9-9655-b858d7218443/08f9303d-b58d-49f9-9655-b858d7218443.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/23-00-58.921_mkngff/08f9303d-b58d-49f9-9655-b858d7218443.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/08f9303d-b58d-49f9-9655-b858d7218443/08f9303d-b58d-49f9-9655-b858d7218443.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/23-00-58.921_mkngff/08f9303d-b58d-49f9-9655-b858d7218443.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/08f9303d-b58d-49f9-9655-b858d7218443/08f9303d-b58d-49f9-9655-b858d7218443.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/23-00-58.921_mkngff/08f9303d-b58d-49f9-9655-b858d7218443.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/08f9303d-b58d-49f9-9655-b858d7218443/08f9303d-b58d-49f9-9655-b858d7218443.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/23-00-58.921_mkngff/08f9303d-b58d-49f9-9655-b858d7218443.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/08f9303d-b58d-49f9-9655-b858d7218443/08f9303d-b58d-49f9-9655-b858d7218443.zarr/3/.zarray']
      ]::text[][]
    );
commit;

