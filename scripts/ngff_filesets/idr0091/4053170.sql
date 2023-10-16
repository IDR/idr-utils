UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/17-23-04.604_mkngff/73f2cc7c-336e-4373-8cb9-3026df20c5e6.zarr' where image in (select id from Image where fileset = 4053170);

begin;
    select mkngff_fileset(
      4053170,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/17-23-04.604_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/17-23-04.604_mkngff/73f2cc7c-336e-4373-8cb9-3026df20c5e6.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/73f2cc7c-336e-4373-8cb9-3026df20c5e6/73f2cc7c-336e-4373-8cb9-3026df20c5e6.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/17-23-04.604_mkngff/73f2cc7c-336e-4373-8cb9-3026df20c5e6.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/73f2cc7c-336e-4373-8cb9-3026df20c5e6/73f2cc7c-336e-4373-8cb9-3026df20c5e6.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/17-23-04.604_mkngff/73f2cc7c-336e-4373-8cb9-3026df20c5e6.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/73f2cc7c-336e-4373-8cb9-3026df20c5e6/73f2cc7c-336e-4373-8cb9-3026df20c5e6.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/17-23-04.604_mkngff/73f2cc7c-336e-4373-8cb9-3026df20c5e6.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/73f2cc7c-336e-4373-8cb9-3026df20c5e6/73f2cc7c-336e-4373-8cb9-3026df20c5e6.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/17-23-04.604_mkngff/73f2cc7c-336e-4373-8cb9-3026df20c5e6.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/73f2cc7c-336e-4373-8cb9-3026df20c5e6/73f2cc7c-336e-4373-8cb9-3026df20c5e6.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/17-23-04.604_mkngff/73f2cc7c-336e-4373-8cb9-3026df20c5e6.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/73f2cc7c-336e-4373-8cb9-3026df20c5e6/73f2cc7c-336e-4373-8cb9-3026df20c5e6.zarr/3/.zarray']
      ]::text[][]
    );
commit;

