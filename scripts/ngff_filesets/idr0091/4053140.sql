UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/02/14-41-08.138_mkngff/971f2809-c748-4259-8044-81ba6c774fdd.zarr' where image in (select id from Image where fileset = 4053140);

begin;
    select mkngff_fileset(
      4053140,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/02/14-41-08.138_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/02/14-41-08.138_mkngff/971f2809-c748-4259-8044-81ba6c774fdd.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/971f2809-c748-4259-8044-81ba6c774fdd/971f2809-c748-4259-8044-81ba6c774fdd.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/02/14-41-08.138_mkngff/971f2809-c748-4259-8044-81ba6c774fdd.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/971f2809-c748-4259-8044-81ba6c774fdd/971f2809-c748-4259-8044-81ba6c774fdd.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/02/14-41-08.138_mkngff/971f2809-c748-4259-8044-81ba6c774fdd.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/971f2809-c748-4259-8044-81ba6c774fdd/971f2809-c748-4259-8044-81ba6c774fdd.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/02/14-41-08.138_mkngff/971f2809-c748-4259-8044-81ba6c774fdd.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/971f2809-c748-4259-8044-81ba6c774fdd/971f2809-c748-4259-8044-81ba6c774fdd.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/02/14-41-08.138_mkngff/971f2809-c748-4259-8044-81ba6c774fdd.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/971f2809-c748-4259-8044-81ba6c774fdd/971f2809-c748-4259-8044-81ba6c774fdd.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/02/14-41-08.138_mkngff/971f2809-c748-4259-8044-81ba6c774fdd.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/971f2809-c748-4259-8044-81ba6c774fdd/971f2809-c748-4259-8044-81ba6c774fdd.zarr/3/.zarray']
      ]::text[][]
    );
commit;

