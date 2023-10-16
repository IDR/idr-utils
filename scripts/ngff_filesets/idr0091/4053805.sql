UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/16-25-44.044_mkngff/a60de425-59a5-4993-af8b-3dc2ee7d488f.zarr' where image in (select id from Image where fileset = 4053805);

begin;
    select mkngff_fileset(
      4053805,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/16-25-44.044_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/16-25-44.044_mkngff/a60de425-59a5-4993-af8b-3dc2ee7d488f.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/a60de425-59a5-4993-af8b-3dc2ee7d488f/a60de425-59a5-4993-af8b-3dc2ee7d488f.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/16-25-44.044_mkngff/a60de425-59a5-4993-af8b-3dc2ee7d488f.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/a60de425-59a5-4993-af8b-3dc2ee7d488f/a60de425-59a5-4993-af8b-3dc2ee7d488f.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/16-25-44.044_mkngff/a60de425-59a5-4993-af8b-3dc2ee7d488f.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/a60de425-59a5-4993-af8b-3dc2ee7d488f/a60de425-59a5-4993-af8b-3dc2ee7d488f.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/16-25-44.044_mkngff/a60de425-59a5-4993-af8b-3dc2ee7d488f.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/a60de425-59a5-4993-af8b-3dc2ee7d488f/a60de425-59a5-4993-af8b-3dc2ee7d488f.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/16-25-44.044_mkngff/a60de425-59a5-4993-af8b-3dc2ee7d488f.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/a60de425-59a5-4993-af8b-3dc2ee7d488f/a60de425-59a5-4993-af8b-3dc2ee7d488f.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/16-25-44.044_mkngff/a60de425-59a5-4993-af8b-3dc2ee7d488f.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/a60de425-59a5-4993-af8b-3dc2ee7d488f/a60de425-59a5-4993-af8b-3dc2ee7d488f.zarr/3/.zarray']
      ]::text[][]
    );
commit;

