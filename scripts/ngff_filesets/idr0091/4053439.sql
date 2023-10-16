UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/10-42-25.303_mkngff/5ab2ac2f-7238-484c-a395-701c9188f3a7.zarr' where image in (select id from Image where fileset = 4053439);

begin;
    select mkngff_fileset(
      4053439,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/10-42-25.303_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/10-42-25.303_mkngff/5ab2ac2f-7238-484c-a395-701c9188f3a7.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/5ab2ac2f-7238-484c-a395-701c9188f3a7/5ab2ac2f-7238-484c-a395-701c9188f3a7.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/10-42-25.303_mkngff/5ab2ac2f-7238-484c-a395-701c9188f3a7.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/5ab2ac2f-7238-484c-a395-701c9188f3a7/5ab2ac2f-7238-484c-a395-701c9188f3a7.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/10-42-25.303_mkngff/5ab2ac2f-7238-484c-a395-701c9188f3a7.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/5ab2ac2f-7238-484c-a395-701c9188f3a7/5ab2ac2f-7238-484c-a395-701c9188f3a7.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/10-42-25.303_mkngff/5ab2ac2f-7238-484c-a395-701c9188f3a7.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/5ab2ac2f-7238-484c-a395-701c9188f3a7/5ab2ac2f-7238-484c-a395-701c9188f3a7.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/10-42-25.303_mkngff/5ab2ac2f-7238-484c-a395-701c9188f3a7.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/5ab2ac2f-7238-484c-a395-701c9188f3a7/5ab2ac2f-7238-484c-a395-701c9188f3a7.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/10-42-25.303_mkngff/5ab2ac2f-7238-484c-a395-701c9188f3a7.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/5ab2ac2f-7238-484c-a395-701c9188f3a7/5ab2ac2f-7238-484c-a395-701c9188f3a7.zarr/3/.zarray']
      ]::text[][]
    );
commit;

