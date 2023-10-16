UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/08-58-24.185_mkngff/166b6ea8-dcd7-4518-9a21-4bfafc1d7618.zarr' where image in (select id from Image where fileset = 4053415);

begin;
    select mkngff_fileset(
      4053415,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/08-58-24.185_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/08-58-24.185_mkngff/166b6ea8-dcd7-4518-9a21-4bfafc1d7618.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/166b6ea8-dcd7-4518-9a21-4bfafc1d7618/166b6ea8-dcd7-4518-9a21-4bfafc1d7618.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/08-58-24.185_mkngff/166b6ea8-dcd7-4518-9a21-4bfafc1d7618.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/166b6ea8-dcd7-4518-9a21-4bfafc1d7618/166b6ea8-dcd7-4518-9a21-4bfafc1d7618.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/08-58-24.185_mkngff/166b6ea8-dcd7-4518-9a21-4bfafc1d7618.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/166b6ea8-dcd7-4518-9a21-4bfafc1d7618/166b6ea8-dcd7-4518-9a21-4bfafc1d7618.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/08-58-24.185_mkngff/166b6ea8-dcd7-4518-9a21-4bfafc1d7618.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/166b6ea8-dcd7-4518-9a21-4bfafc1d7618/166b6ea8-dcd7-4518-9a21-4bfafc1d7618.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/08-58-24.185_mkngff/166b6ea8-dcd7-4518-9a21-4bfafc1d7618.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/166b6ea8-dcd7-4518-9a21-4bfafc1d7618/166b6ea8-dcd7-4518-9a21-4bfafc1d7618.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/08-58-24.185_mkngff/166b6ea8-dcd7-4518-9a21-4bfafc1d7618.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/166b6ea8-dcd7-4518-9a21-4bfafc1d7618/166b6ea8-dcd7-4518-9a21-4bfafc1d7618.zarr/3/.zarray']
      ]::text[][]
    );
commit;

