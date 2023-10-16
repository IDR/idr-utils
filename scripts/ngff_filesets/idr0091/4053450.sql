UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/11-18-34.305_mkngff/604bf00b-186f-44d6-9192-9d26c9d85338.zarr' where image in (select id from Image where fileset = 4053450);

begin;
    select mkngff_fileset(
      4053450,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/11-18-34.305_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/11-18-34.305_mkngff/604bf00b-186f-44d6-9192-9d26c9d85338.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/604bf00b-186f-44d6-9192-9d26c9d85338/604bf00b-186f-44d6-9192-9d26c9d85338.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/11-18-34.305_mkngff/604bf00b-186f-44d6-9192-9d26c9d85338.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/604bf00b-186f-44d6-9192-9d26c9d85338/604bf00b-186f-44d6-9192-9d26c9d85338.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/11-18-34.305_mkngff/604bf00b-186f-44d6-9192-9d26c9d85338.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/604bf00b-186f-44d6-9192-9d26c9d85338/604bf00b-186f-44d6-9192-9d26c9d85338.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/11-18-34.305_mkngff/604bf00b-186f-44d6-9192-9d26c9d85338.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/604bf00b-186f-44d6-9192-9d26c9d85338/604bf00b-186f-44d6-9192-9d26c9d85338.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/11-18-34.305_mkngff/604bf00b-186f-44d6-9192-9d26c9d85338.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/604bf00b-186f-44d6-9192-9d26c9d85338/604bf00b-186f-44d6-9192-9d26c9d85338.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/11-18-34.305_mkngff/604bf00b-186f-44d6-9192-9d26c9d85338.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/604bf00b-186f-44d6-9192-9d26c9d85338/604bf00b-186f-44d6-9192-9d26c9d85338.zarr/3/.zarray']
      ]::text[][]
    );
commit;

