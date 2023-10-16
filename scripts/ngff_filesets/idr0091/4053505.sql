UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/14-59-56.688_mkngff/124f05ae-1748-455d-9481-a33044030854.zarr' where image in (select id from Image where fileset = 4053505);

begin;
    select mkngff_fileset(
      4053505,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/14-59-56.688_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/14-59-56.688_mkngff/124f05ae-1748-455d-9481-a33044030854.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/124f05ae-1748-455d-9481-a33044030854/124f05ae-1748-455d-9481-a33044030854.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/14-59-56.688_mkngff/124f05ae-1748-455d-9481-a33044030854.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/124f05ae-1748-455d-9481-a33044030854/124f05ae-1748-455d-9481-a33044030854.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/14-59-56.688_mkngff/124f05ae-1748-455d-9481-a33044030854.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/124f05ae-1748-455d-9481-a33044030854/124f05ae-1748-455d-9481-a33044030854.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/14-59-56.688_mkngff/124f05ae-1748-455d-9481-a33044030854.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/124f05ae-1748-455d-9481-a33044030854/124f05ae-1748-455d-9481-a33044030854.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/14-59-56.688_mkngff/124f05ae-1748-455d-9481-a33044030854.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/124f05ae-1748-455d-9481-a33044030854/124f05ae-1748-455d-9481-a33044030854.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/14-59-56.688_mkngff/124f05ae-1748-455d-9481-a33044030854.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/124f05ae-1748-455d-9481-a33044030854/124f05ae-1748-455d-9481-a33044030854.zarr/3/.zarray']
      ]::text[][]
    );
commit;

