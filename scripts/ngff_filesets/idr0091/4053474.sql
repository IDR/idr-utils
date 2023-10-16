UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/12-26-40.852_mkngff/a1b02047-f262-4012-b893-3d97fdaf61fa.zarr' where image in (select id from Image where fileset = 4053474);

begin;
    select mkngff_fileset(
      4053474,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/12-26-40.852_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/12-26-40.852_mkngff/a1b02047-f262-4012-b893-3d97fdaf61fa.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/a1b02047-f262-4012-b893-3d97fdaf61fa/a1b02047-f262-4012-b893-3d97fdaf61fa.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/12-26-40.852_mkngff/a1b02047-f262-4012-b893-3d97fdaf61fa.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/a1b02047-f262-4012-b893-3d97fdaf61fa/a1b02047-f262-4012-b893-3d97fdaf61fa.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/12-26-40.852_mkngff/a1b02047-f262-4012-b893-3d97fdaf61fa.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/a1b02047-f262-4012-b893-3d97fdaf61fa/a1b02047-f262-4012-b893-3d97fdaf61fa.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/12-26-40.852_mkngff/a1b02047-f262-4012-b893-3d97fdaf61fa.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/a1b02047-f262-4012-b893-3d97fdaf61fa/a1b02047-f262-4012-b893-3d97fdaf61fa.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/12-26-40.852_mkngff/a1b02047-f262-4012-b893-3d97fdaf61fa.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/a1b02047-f262-4012-b893-3d97fdaf61fa/a1b02047-f262-4012-b893-3d97fdaf61fa.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/12-26-40.852_mkngff/a1b02047-f262-4012-b893-3d97fdaf61fa.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/a1b02047-f262-4012-b893-3d97fdaf61fa/a1b02047-f262-4012-b893-3d97fdaf61fa.zarr/3/.zarray']
      ]::text[][]
    );
commit;

