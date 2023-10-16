UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/16-08-45.954_mkngff/65d30015-a7ca-4b8d-95cb-1fc52d3f4aac.zarr' where image in (select id from Image where fileset = 4053798);

begin;
    select mkngff_fileset(
      4053798,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/16-08-45.954_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/16-08-45.954_mkngff/65d30015-a7ca-4b8d-95cb-1fc52d3f4aac.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/65d30015-a7ca-4b8d-95cb-1fc52d3f4aac/65d30015-a7ca-4b8d-95cb-1fc52d3f4aac.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/16-08-45.954_mkngff/65d30015-a7ca-4b8d-95cb-1fc52d3f4aac.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/65d30015-a7ca-4b8d-95cb-1fc52d3f4aac/65d30015-a7ca-4b8d-95cb-1fc52d3f4aac.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/16-08-45.954_mkngff/65d30015-a7ca-4b8d-95cb-1fc52d3f4aac.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/65d30015-a7ca-4b8d-95cb-1fc52d3f4aac/65d30015-a7ca-4b8d-95cb-1fc52d3f4aac.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/16-08-45.954_mkngff/65d30015-a7ca-4b8d-95cb-1fc52d3f4aac.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/65d30015-a7ca-4b8d-95cb-1fc52d3f4aac/65d30015-a7ca-4b8d-95cb-1fc52d3f4aac.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/16-08-45.954_mkngff/65d30015-a7ca-4b8d-95cb-1fc52d3f4aac.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/65d30015-a7ca-4b8d-95cb-1fc52d3f4aac/65d30015-a7ca-4b8d-95cb-1fc52d3f4aac.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/16-08-45.954_mkngff/65d30015-a7ca-4b8d-95cb-1fc52d3f4aac.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/65d30015-a7ca-4b8d-95cb-1fc52d3f4aac/65d30015-a7ca-4b8d-95cb-1fc52d3f4aac.zarr/3/.zarray']
      ]::text[][]
    );
commit;

