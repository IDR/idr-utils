UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/06-54-16.848_mkngff/55263661-0d52-4809-8213-2c3fe295bd36.zarr' where image in (select id from Image where fileset = 4053387);

begin;
    select mkngff_fileset(
      4053387,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/06-54-16.848_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/06-54-16.848_mkngff/55263661-0d52-4809-8213-2c3fe295bd36.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/55263661-0d52-4809-8213-2c3fe295bd36/55263661-0d52-4809-8213-2c3fe295bd36.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/06-54-16.848_mkngff/55263661-0d52-4809-8213-2c3fe295bd36.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/55263661-0d52-4809-8213-2c3fe295bd36/55263661-0d52-4809-8213-2c3fe295bd36.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/06-54-16.848_mkngff/55263661-0d52-4809-8213-2c3fe295bd36.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/55263661-0d52-4809-8213-2c3fe295bd36/55263661-0d52-4809-8213-2c3fe295bd36.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/06-54-16.848_mkngff/55263661-0d52-4809-8213-2c3fe295bd36.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/55263661-0d52-4809-8213-2c3fe295bd36/55263661-0d52-4809-8213-2c3fe295bd36.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/06-54-16.848_mkngff/55263661-0d52-4809-8213-2c3fe295bd36.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/55263661-0d52-4809-8213-2c3fe295bd36/55263661-0d52-4809-8213-2c3fe295bd36.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/06-54-16.848_mkngff/55263661-0d52-4809-8213-2c3fe295bd36.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/55263661-0d52-4809-8213-2c3fe295bd36/55263661-0d52-4809-8213-2c3fe295bd36.zarr/3/.zarray']
      ]::text[][]
    );
commit;

