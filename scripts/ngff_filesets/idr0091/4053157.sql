UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/16-12-36.384_mkngff/afbe63ad-0e9b-4f9a-a850-7eaf89640931.zarr' where image in (select id from Image where fileset = 4053157);

begin;
    select mkngff_fileset(
      4053157,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/16-12-36.384_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/16-12-36.384_mkngff/afbe63ad-0e9b-4f9a-a850-7eaf89640931.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/afbe63ad-0e9b-4f9a-a850-7eaf89640931/afbe63ad-0e9b-4f9a-a850-7eaf89640931.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/16-12-36.384_mkngff/afbe63ad-0e9b-4f9a-a850-7eaf89640931.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/afbe63ad-0e9b-4f9a-a850-7eaf89640931/afbe63ad-0e9b-4f9a-a850-7eaf89640931.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/16-12-36.384_mkngff/afbe63ad-0e9b-4f9a-a850-7eaf89640931.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/afbe63ad-0e9b-4f9a-a850-7eaf89640931/afbe63ad-0e9b-4f9a-a850-7eaf89640931.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/16-12-36.384_mkngff/afbe63ad-0e9b-4f9a-a850-7eaf89640931.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/afbe63ad-0e9b-4f9a-a850-7eaf89640931/afbe63ad-0e9b-4f9a-a850-7eaf89640931.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/16-12-36.384_mkngff/afbe63ad-0e9b-4f9a-a850-7eaf89640931.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/afbe63ad-0e9b-4f9a-a850-7eaf89640931/afbe63ad-0e9b-4f9a-a850-7eaf89640931.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/16-12-36.384_mkngff/afbe63ad-0e9b-4f9a-a850-7eaf89640931.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/afbe63ad-0e9b-4f9a-a850-7eaf89640931/afbe63ad-0e9b-4f9a-a850-7eaf89640931.zarr/3/.zarray']
      ]::text[][]
    );
commit;

