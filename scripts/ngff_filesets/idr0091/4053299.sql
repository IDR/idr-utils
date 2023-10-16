UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/21-27-32.289_mkngff/b3a047e5-06e9-4b66-ac14-39549f5a24a5.zarr' where image in (select id from Image where fileset = 4053299);

begin;
    select mkngff_fileset(
      4053299,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/21-27-32.289_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/21-27-32.289_mkngff/b3a047e5-06e9-4b66-ac14-39549f5a24a5.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b3a047e5-06e9-4b66-ac14-39549f5a24a5/b3a047e5-06e9-4b66-ac14-39549f5a24a5.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/21-27-32.289_mkngff/b3a047e5-06e9-4b66-ac14-39549f5a24a5.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b3a047e5-06e9-4b66-ac14-39549f5a24a5/b3a047e5-06e9-4b66-ac14-39549f5a24a5.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/21-27-32.289_mkngff/b3a047e5-06e9-4b66-ac14-39549f5a24a5.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b3a047e5-06e9-4b66-ac14-39549f5a24a5/b3a047e5-06e9-4b66-ac14-39549f5a24a5.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/21-27-32.289_mkngff/b3a047e5-06e9-4b66-ac14-39549f5a24a5.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b3a047e5-06e9-4b66-ac14-39549f5a24a5/b3a047e5-06e9-4b66-ac14-39549f5a24a5.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/21-27-32.289_mkngff/b3a047e5-06e9-4b66-ac14-39549f5a24a5.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b3a047e5-06e9-4b66-ac14-39549f5a24a5/b3a047e5-06e9-4b66-ac14-39549f5a24a5.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/02/21-27-32.289_mkngff/b3a047e5-06e9-4b66-ac14-39549f5a24a5.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b3a047e5-06e9-4b66-ac14-39549f5a24a5/b3a047e5-06e9-4b66-ac14-39549f5a24a5.zarr/3/.zarray']
      ]::text[][]
    );
commit;

