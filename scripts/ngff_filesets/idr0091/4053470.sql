UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/12-14-42.127_mkngff/3f2f42f6-49b6-465f-9341-487d6ece1cd2.zarr' where image in (select id from Image where fileset = 4053470);

begin;
    select mkngff_fileset(
      4053470,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/12-14-42.127_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/12-14-42.127_mkngff/3f2f42f6-49b6-465f-9341-487d6ece1cd2.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3f2f42f6-49b6-465f-9341-487d6ece1cd2/3f2f42f6-49b6-465f-9341-487d6ece1cd2.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/12-14-42.127_mkngff/3f2f42f6-49b6-465f-9341-487d6ece1cd2.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3f2f42f6-49b6-465f-9341-487d6ece1cd2/3f2f42f6-49b6-465f-9341-487d6ece1cd2.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/12-14-42.127_mkngff/3f2f42f6-49b6-465f-9341-487d6ece1cd2.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3f2f42f6-49b6-465f-9341-487d6ece1cd2/3f2f42f6-49b6-465f-9341-487d6ece1cd2.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/12-14-42.127_mkngff/3f2f42f6-49b6-465f-9341-487d6ece1cd2.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3f2f42f6-49b6-465f-9341-487d6ece1cd2/3f2f42f6-49b6-465f-9341-487d6ece1cd2.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/12-14-42.127_mkngff/3f2f42f6-49b6-465f-9341-487d6ece1cd2.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3f2f42f6-49b6-465f-9341-487d6ece1cd2/3f2f42f6-49b6-465f-9341-487d6ece1cd2.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/12-14-42.127_mkngff/3f2f42f6-49b6-465f-9341-487d6ece1cd2.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3f2f42f6-49b6-465f-9341-487d6ece1cd2/3f2f42f6-49b6-465f-9341-487d6ece1cd2.zarr/3/.zarray']
      ]::text[][]
    );
commit;

