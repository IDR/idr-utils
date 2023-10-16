UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/11-54-52.205_mkngff/3c1df7b2-7203-4709-a412-4800d2880339.zarr' where image in (select id from Image where fileset = 4053463);

begin;
    select mkngff_fileset(
      4053463,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/11-54-52.205_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/11-54-52.205_mkngff/3c1df7b2-7203-4709-a412-4800d2880339.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3c1df7b2-7203-4709-a412-4800d2880339/3c1df7b2-7203-4709-a412-4800d2880339.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/11-54-52.205_mkngff/3c1df7b2-7203-4709-a412-4800d2880339.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3c1df7b2-7203-4709-a412-4800d2880339/3c1df7b2-7203-4709-a412-4800d2880339.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/11-54-52.205_mkngff/3c1df7b2-7203-4709-a412-4800d2880339.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3c1df7b2-7203-4709-a412-4800d2880339/3c1df7b2-7203-4709-a412-4800d2880339.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/11-54-52.205_mkngff/3c1df7b2-7203-4709-a412-4800d2880339.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3c1df7b2-7203-4709-a412-4800d2880339/3c1df7b2-7203-4709-a412-4800d2880339.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/11-54-52.205_mkngff/3c1df7b2-7203-4709-a412-4800d2880339.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3c1df7b2-7203-4709-a412-4800d2880339/3c1df7b2-7203-4709-a412-4800d2880339.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/11-54-52.205_mkngff/3c1df7b2-7203-4709-a412-4800d2880339.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3c1df7b2-7203-4709-a412-4800d2880339/3c1df7b2-7203-4709-a412-4800d2880339.zarr/3/.zarray']
      ]::text[][]
    );
commit;

