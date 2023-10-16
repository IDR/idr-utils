UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/17-18-34.848_mkngff/93cd755c-e33b-4788-900d-8550bbdfbb29.zarr' where image in (select id from Image where fileset = 4053827);

begin;
    select mkngff_fileset(
      4053827,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/17-18-34.848_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/17-18-34.848_mkngff/93cd755c-e33b-4788-900d-8550bbdfbb29.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/93cd755c-e33b-4788-900d-8550bbdfbb29/93cd755c-e33b-4788-900d-8550bbdfbb29.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/17-18-34.848_mkngff/93cd755c-e33b-4788-900d-8550bbdfbb29.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/93cd755c-e33b-4788-900d-8550bbdfbb29/93cd755c-e33b-4788-900d-8550bbdfbb29.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/17-18-34.848_mkngff/93cd755c-e33b-4788-900d-8550bbdfbb29.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/93cd755c-e33b-4788-900d-8550bbdfbb29/93cd755c-e33b-4788-900d-8550bbdfbb29.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/17-18-34.848_mkngff/93cd755c-e33b-4788-900d-8550bbdfbb29.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/93cd755c-e33b-4788-900d-8550bbdfbb29/93cd755c-e33b-4788-900d-8550bbdfbb29.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/17-18-34.848_mkngff/93cd755c-e33b-4788-900d-8550bbdfbb29.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/93cd755c-e33b-4788-900d-8550bbdfbb29/93cd755c-e33b-4788-900d-8550bbdfbb29.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/17-18-34.848_mkngff/93cd755c-e33b-4788-900d-8550bbdfbb29.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/93cd755c-e33b-4788-900d-8550bbdfbb29/93cd755c-e33b-4788-900d-8550bbdfbb29.zarr/3/.zarray']
      ]::text[][]
    );
commit;

