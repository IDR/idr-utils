UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/16-04-09.673_mkngff/562a5755-c2e9-474d-9c29-a2bc8ab0aae3.zarr' where image in (select id from Image where fileset = 4053796);

begin;
    select mkngff_fileset(
      4053796,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/16-04-09.673_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/16-04-09.673_mkngff/562a5755-c2e9-474d-9c29-a2bc8ab0aae3.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/562a5755-c2e9-474d-9c29-a2bc8ab0aae3/562a5755-c2e9-474d-9c29-a2bc8ab0aae3.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/16-04-09.673_mkngff/562a5755-c2e9-474d-9c29-a2bc8ab0aae3.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/562a5755-c2e9-474d-9c29-a2bc8ab0aae3/562a5755-c2e9-474d-9c29-a2bc8ab0aae3.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/16-04-09.673_mkngff/562a5755-c2e9-474d-9c29-a2bc8ab0aae3.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/562a5755-c2e9-474d-9c29-a2bc8ab0aae3/562a5755-c2e9-474d-9c29-a2bc8ab0aae3.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/16-04-09.673_mkngff/562a5755-c2e9-474d-9c29-a2bc8ab0aae3.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/562a5755-c2e9-474d-9c29-a2bc8ab0aae3/562a5755-c2e9-474d-9c29-a2bc8ab0aae3.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/16-04-09.673_mkngff/562a5755-c2e9-474d-9c29-a2bc8ab0aae3.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/562a5755-c2e9-474d-9c29-a2bc8ab0aae3/562a5755-c2e9-474d-9c29-a2bc8ab0aae3.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/16-04-09.673_mkngff/562a5755-c2e9-474d-9c29-a2bc8ab0aae3.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/562a5755-c2e9-474d-9c29-a2bc8ab0aae3/562a5755-c2e9-474d-9c29-a2bc8ab0aae3.zarr/3/.zarray']
      ]::text[][]
    );
commit;

