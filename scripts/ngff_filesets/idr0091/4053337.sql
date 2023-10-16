UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/01-03-03.274_mkngff/60c1a472-898e-4e34-8bea-bb45651a4c33.zarr' where image in (select id from Image where fileset = 4053337);

begin;
    select mkngff_fileset(
      4053337,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/01-03-03.274_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/01-03-03.274_mkngff/60c1a472-898e-4e34-8bea-bb45651a4c33.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/60c1a472-898e-4e34-8bea-bb45651a4c33/60c1a472-898e-4e34-8bea-bb45651a4c33.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/01-03-03.274_mkngff/60c1a472-898e-4e34-8bea-bb45651a4c33.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/60c1a472-898e-4e34-8bea-bb45651a4c33/60c1a472-898e-4e34-8bea-bb45651a4c33.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/01-03-03.274_mkngff/60c1a472-898e-4e34-8bea-bb45651a4c33.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/60c1a472-898e-4e34-8bea-bb45651a4c33/60c1a472-898e-4e34-8bea-bb45651a4c33.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/01-03-03.274_mkngff/60c1a472-898e-4e34-8bea-bb45651a4c33.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/60c1a472-898e-4e34-8bea-bb45651a4c33/60c1a472-898e-4e34-8bea-bb45651a4c33.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/01-03-03.274_mkngff/60c1a472-898e-4e34-8bea-bb45651a4c33.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/60c1a472-898e-4e34-8bea-bb45651a4c33/60c1a472-898e-4e34-8bea-bb45651a4c33.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/01-03-03.274_mkngff/60c1a472-898e-4e34-8bea-bb45651a4c33.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/60c1a472-898e-4e34-8bea-bb45651a4c33/60c1a472-898e-4e34-8bea-bb45651a4c33.zarr/3/.zarray']
      ]::text[][]
    );
commit;

