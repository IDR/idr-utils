UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/17-03-38.127_mkngff/e8b21444-d4bf-4961-893e-e60768cb8d15.zarr' where image in (select id from Image where fileset = 4053821);

begin;
    select mkngff_fileset(
      4053821,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/17-03-38.127_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/17-03-38.127_mkngff/e8b21444-d4bf-4961-893e-e60768cb8d15.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e8b21444-d4bf-4961-893e-e60768cb8d15/e8b21444-d4bf-4961-893e-e60768cb8d15.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/17-03-38.127_mkngff/e8b21444-d4bf-4961-893e-e60768cb8d15.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e8b21444-d4bf-4961-893e-e60768cb8d15/e8b21444-d4bf-4961-893e-e60768cb8d15.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/17-03-38.127_mkngff/e8b21444-d4bf-4961-893e-e60768cb8d15.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e8b21444-d4bf-4961-893e-e60768cb8d15/e8b21444-d4bf-4961-893e-e60768cb8d15.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/17-03-38.127_mkngff/e8b21444-d4bf-4961-893e-e60768cb8d15.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e8b21444-d4bf-4961-893e-e60768cb8d15/e8b21444-d4bf-4961-893e-e60768cb8d15.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/17-03-38.127_mkngff/e8b21444-d4bf-4961-893e-e60768cb8d15.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e8b21444-d4bf-4961-893e-e60768cb8d15/e8b21444-d4bf-4961-893e-e60768cb8d15.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/17-03-38.127_mkngff/e8b21444-d4bf-4961-893e-e60768cb8d15.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e8b21444-d4bf-4961-893e-e60768cb8d15/e8b21444-d4bf-4961-893e-e60768cb8d15.zarr/3/.zarray']
      ]::text[][]
    );
commit;

