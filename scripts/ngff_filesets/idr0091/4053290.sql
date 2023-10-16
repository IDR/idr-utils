UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/02/20-37-39.894_mkngff/762de60c-f647-4eaf-ba92-d3e47e3fe8aa.zarr' where image in (select id from Image where fileset = 4053290);

begin;
    select mkngff_fileset(
      4053290,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/02/20-37-39.894_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/02/20-37-39.894_mkngff/762de60c-f647-4eaf-ba92-d3e47e3fe8aa.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/762de60c-f647-4eaf-ba92-d3e47e3fe8aa/762de60c-f647-4eaf-ba92-d3e47e3fe8aa.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/02/20-37-39.894_mkngff/762de60c-f647-4eaf-ba92-d3e47e3fe8aa.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/762de60c-f647-4eaf-ba92-d3e47e3fe8aa/762de60c-f647-4eaf-ba92-d3e47e3fe8aa.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/02/20-37-39.894_mkngff/762de60c-f647-4eaf-ba92-d3e47e3fe8aa.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/762de60c-f647-4eaf-ba92-d3e47e3fe8aa/762de60c-f647-4eaf-ba92-d3e47e3fe8aa.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/02/20-37-39.894_mkngff/762de60c-f647-4eaf-ba92-d3e47e3fe8aa.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/762de60c-f647-4eaf-ba92-d3e47e3fe8aa/762de60c-f647-4eaf-ba92-d3e47e3fe8aa.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/02/20-37-39.894_mkngff/762de60c-f647-4eaf-ba92-d3e47e3fe8aa.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/762de60c-f647-4eaf-ba92-d3e47e3fe8aa/762de60c-f647-4eaf-ba92-d3e47e3fe8aa.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/02/20-37-39.894_mkngff/762de60c-f647-4eaf-ba92-d3e47e3fe8aa.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/762de60c-f647-4eaf-ba92-d3e47e3fe8aa/762de60c-f647-4eaf-ba92-d3e47e3fe8aa.zarr/3/.zarray']
      ]::text[][]
    );
commit;

