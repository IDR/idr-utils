UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/23-20-11.893_mkngff/7614dade-48e6-4f76-ba0b-25ed69706974.zarr' where image in (select id from Image where fileset = 4053319);

begin;
    select mkngff_fileset(
      4053319,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/23-20-11.893_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/23-20-11.893_mkngff/7614dade-48e6-4f76-ba0b-25ed69706974.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7614dade-48e6-4f76-ba0b-25ed69706974/7614dade-48e6-4f76-ba0b-25ed69706974.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/23-20-11.893_mkngff/7614dade-48e6-4f76-ba0b-25ed69706974.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7614dade-48e6-4f76-ba0b-25ed69706974/7614dade-48e6-4f76-ba0b-25ed69706974.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/23-20-11.893_mkngff/7614dade-48e6-4f76-ba0b-25ed69706974.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7614dade-48e6-4f76-ba0b-25ed69706974/7614dade-48e6-4f76-ba0b-25ed69706974.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/23-20-11.893_mkngff/7614dade-48e6-4f76-ba0b-25ed69706974.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7614dade-48e6-4f76-ba0b-25ed69706974/7614dade-48e6-4f76-ba0b-25ed69706974.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/23-20-11.893_mkngff/7614dade-48e6-4f76-ba0b-25ed69706974.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7614dade-48e6-4f76-ba0b-25ed69706974/7614dade-48e6-4f76-ba0b-25ed69706974.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/23-20-11.893_mkngff/7614dade-48e6-4f76-ba0b-25ed69706974.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7614dade-48e6-4f76-ba0b-25ed69706974/7614dade-48e6-4f76-ba0b-25ed69706974.zarr/3/.zarray']
      ]::text[][]
    );
commit;

