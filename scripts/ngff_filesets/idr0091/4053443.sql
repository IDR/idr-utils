UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/10-58-51.350_mkngff/386d2681-16d9-4514-bb58-f416311b3328.zarr' where image in (select id from Image where fileset = 4053443);

begin;
    select mkngff_fileset(
      4053443,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/10-58-51.350_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/10-58-51.350_mkngff/386d2681-16d9-4514-bb58-f416311b3328.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/386d2681-16d9-4514-bb58-f416311b3328/386d2681-16d9-4514-bb58-f416311b3328.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/10-58-51.350_mkngff/386d2681-16d9-4514-bb58-f416311b3328.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/386d2681-16d9-4514-bb58-f416311b3328/386d2681-16d9-4514-bb58-f416311b3328.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/10-58-51.350_mkngff/386d2681-16d9-4514-bb58-f416311b3328.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/386d2681-16d9-4514-bb58-f416311b3328/386d2681-16d9-4514-bb58-f416311b3328.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/10-58-51.350_mkngff/386d2681-16d9-4514-bb58-f416311b3328.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/386d2681-16d9-4514-bb58-f416311b3328/386d2681-16d9-4514-bb58-f416311b3328.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/10-58-51.350_mkngff/386d2681-16d9-4514-bb58-f416311b3328.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/386d2681-16d9-4514-bb58-f416311b3328/386d2681-16d9-4514-bb58-f416311b3328.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/10-58-51.350_mkngff/386d2681-16d9-4514-bb58-f416311b3328.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/386d2681-16d9-4514-bb58-f416311b3328/386d2681-16d9-4514-bb58-f416311b3328.zarr/3/.zarray']
      ]::text[][]
    );
commit;

