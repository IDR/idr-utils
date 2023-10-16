UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/19-25-07.320_mkngff/2e3c33fc-b42f-43a3-b708-5c7fb7a32b30.zarr' where image in (select id from Image where fileset = 4053192);

begin;
    select mkngff_fileset(
      4053192,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/19-25-07.320_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/19-25-07.320_mkngff/2e3c33fc-b42f-43a3-b708-5c7fb7a32b30.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/2e3c33fc-b42f-43a3-b708-5c7fb7a32b30/2e3c33fc-b42f-43a3-b708-5c7fb7a32b30.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/19-25-07.320_mkngff/2e3c33fc-b42f-43a3-b708-5c7fb7a32b30.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/2e3c33fc-b42f-43a3-b708-5c7fb7a32b30/2e3c33fc-b42f-43a3-b708-5c7fb7a32b30.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/19-25-07.320_mkngff/2e3c33fc-b42f-43a3-b708-5c7fb7a32b30.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/2e3c33fc-b42f-43a3-b708-5c7fb7a32b30/2e3c33fc-b42f-43a3-b708-5c7fb7a32b30.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/19-25-07.320_mkngff/2e3c33fc-b42f-43a3-b708-5c7fb7a32b30.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/2e3c33fc-b42f-43a3-b708-5c7fb7a32b30/2e3c33fc-b42f-43a3-b708-5c7fb7a32b30.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/19-25-07.320_mkngff/2e3c33fc-b42f-43a3-b708-5c7fb7a32b30.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/2e3c33fc-b42f-43a3-b708-5c7fb7a32b30/2e3c33fc-b42f-43a3-b708-5c7fb7a32b30.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/02/19-25-07.320_mkngff/2e3c33fc-b42f-43a3-b708-5c7fb7a32b30.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/2e3c33fc-b42f-43a3-b708-5c7fb7a32b30/2e3c33fc-b42f-43a3-b708-5c7fb7a32b30.zarr/3/.zarray']
      ]::text[][]
    );
commit;

