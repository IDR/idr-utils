UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/17-47-15.339_mkngff/fe844ade-69e3-4816-8049-8945276c8f85.zarr' where image in (select id from Image where fileset = 4053839);

begin;
    select mkngff_fileset(
      4053839,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/17-47-15.339_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/17-47-15.339_mkngff/fe844ade-69e3-4816-8049-8945276c8f85.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/fe844ade-69e3-4816-8049-8945276c8f85/fe844ade-69e3-4816-8049-8945276c8f85.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/17-47-15.339_mkngff/fe844ade-69e3-4816-8049-8945276c8f85.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/fe844ade-69e3-4816-8049-8945276c8f85/fe844ade-69e3-4816-8049-8945276c8f85.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/17-47-15.339_mkngff/fe844ade-69e3-4816-8049-8945276c8f85.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/fe844ade-69e3-4816-8049-8945276c8f85/fe844ade-69e3-4816-8049-8945276c8f85.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/17-47-15.339_mkngff/fe844ade-69e3-4816-8049-8945276c8f85.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/fe844ade-69e3-4816-8049-8945276c8f85/fe844ade-69e3-4816-8049-8945276c8f85.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/17-47-15.339_mkngff/fe844ade-69e3-4816-8049-8945276c8f85.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/fe844ade-69e3-4816-8049-8945276c8f85/fe844ade-69e3-4816-8049-8945276c8f85.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/17-47-15.339_mkngff/fe844ade-69e3-4816-8049-8945276c8f85.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/fe844ade-69e3-4816-8049-8945276c8f85/fe844ade-69e3-4816-8049-8945276c8f85.zarr/3/.zarray']
      ]::text[][]
    );
commit;

