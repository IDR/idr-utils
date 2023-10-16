UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/12-51-04.703_mkngff/a1488ea7-55bf-4384-a448-69878c2fa33a.zarr' where image in (select id from Image where fileset = 4053482);

begin;
    select mkngff_fileset(
      4053482,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/12-51-04.703_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/12-51-04.703_mkngff/a1488ea7-55bf-4384-a448-69878c2fa33a.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/a1488ea7-55bf-4384-a448-69878c2fa33a/a1488ea7-55bf-4384-a448-69878c2fa33a.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/12-51-04.703_mkngff/a1488ea7-55bf-4384-a448-69878c2fa33a.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/a1488ea7-55bf-4384-a448-69878c2fa33a/a1488ea7-55bf-4384-a448-69878c2fa33a.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/12-51-04.703_mkngff/a1488ea7-55bf-4384-a448-69878c2fa33a.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/a1488ea7-55bf-4384-a448-69878c2fa33a/a1488ea7-55bf-4384-a448-69878c2fa33a.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/12-51-04.703_mkngff/a1488ea7-55bf-4384-a448-69878c2fa33a.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/a1488ea7-55bf-4384-a448-69878c2fa33a/a1488ea7-55bf-4384-a448-69878c2fa33a.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/12-51-04.703_mkngff/a1488ea7-55bf-4384-a448-69878c2fa33a.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/a1488ea7-55bf-4384-a448-69878c2fa33a/a1488ea7-55bf-4384-a448-69878c2fa33a.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/12-51-04.703_mkngff/a1488ea7-55bf-4384-a448-69878c2fa33a.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/a1488ea7-55bf-4384-a448-69878c2fa33a/a1488ea7-55bf-4384-a448-69878c2fa33a.zarr/3/.zarray']
      ]::text[][]
    );
commit;

