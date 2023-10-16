UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/11-32-48.457_mkngff/28a0498e-4846-4296-bf6e-988d311bb3be.zarr' where image in (select id from Image where fileset = 4053455);

begin;
    select mkngff_fileset(
      4053455,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/11-32-48.457_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/11-32-48.457_mkngff/28a0498e-4846-4296-bf6e-988d311bb3be.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/28a0498e-4846-4296-bf6e-988d311bb3be/28a0498e-4846-4296-bf6e-988d311bb3be.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/11-32-48.457_mkngff/28a0498e-4846-4296-bf6e-988d311bb3be.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/28a0498e-4846-4296-bf6e-988d311bb3be/28a0498e-4846-4296-bf6e-988d311bb3be.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/11-32-48.457_mkngff/28a0498e-4846-4296-bf6e-988d311bb3be.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/28a0498e-4846-4296-bf6e-988d311bb3be/28a0498e-4846-4296-bf6e-988d311bb3be.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/11-32-48.457_mkngff/28a0498e-4846-4296-bf6e-988d311bb3be.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/28a0498e-4846-4296-bf6e-988d311bb3be/28a0498e-4846-4296-bf6e-988d311bb3be.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/11-32-48.457_mkngff/28a0498e-4846-4296-bf6e-988d311bb3be.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/28a0498e-4846-4296-bf6e-988d311bb3be/28a0498e-4846-4296-bf6e-988d311bb3be.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/11-32-48.457_mkngff/28a0498e-4846-4296-bf6e-988d311bb3be.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/28a0498e-4846-4296-bf6e-988d311bb3be/28a0498e-4846-4296-bf6e-988d311bb3be.zarr/3/.zarray']
      ]::text[][]
    );
commit;

