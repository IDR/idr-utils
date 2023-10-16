UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/11-01-30.625_mkngff/2037b3b4-902f-45f3-a370-92d4efba3d3f.zarr' where image in (select id from Image where fileset = 4053444);

begin;
    select mkngff_fileset(
      4053444,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/11-01-30.625_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/11-01-30.625_mkngff/2037b3b4-902f-45f3-a370-92d4efba3d3f.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/2037b3b4-902f-45f3-a370-92d4efba3d3f/2037b3b4-902f-45f3-a370-92d4efba3d3f.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/11-01-30.625_mkngff/2037b3b4-902f-45f3-a370-92d4efba3d3f.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/2037b3b4-902f-45f3-a370-92d4efba3d3f/2037b3b4-902f-45f3-a370-92d4efba3d3f.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/11-01-30.625_mkngff/2037b3b4-902f-45f3-a370-92d4efba3d3f.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/2037b3b4-902f-45f3-a370-92d4efba3d3f/2037b3b4-902f-45f3-a370-92d4efba3d3f.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/11-01-30.625_mkngff/2037b3b4-902f-45f3-a370-92d4efba3d3f.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/2037b3b4-902f-45f3-a370-92d4efba3d3f/2037b3b4-902f-45f3-a370-92d4efba3d3f.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/11-01-30.625_mkngff/2037b3b4-902f-45f3-a370-92d4efba3d3f.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/2037b3b4-902f-45f3-a370-92d4efba3d3f/2037b3b4-902f-45f3-a370-92d4efba3d3f.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/11-01-30.625_mkngff/2037b3b4-902f-45f3-a370-92d4efba3d3f.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/2037b3b4-902f-45f3-a370-92d4efba3d3f/2037b3b4-902f-45f3-a370-92d4efba3d3f.zarr/3/.zarray']
      ]::text[][]
    );
commit;

