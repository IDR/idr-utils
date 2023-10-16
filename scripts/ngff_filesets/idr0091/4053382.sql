UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/06-18-55.324_mkngff/d085cc1b-d0a9-4dab-a55a-0ab251543b14.zarr' where image in (select id from Image where fileset = 4053382);

begin;
    select mkngff_fileset(
      4053382,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/06-18-55.324_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/06-18-55.324_mkngff/d085cc1b-d0a9-4dab-a55a-0ab251543b14.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d085cc1b-d0a9-4dab-a55a-0ab251543b14/d085cc1b-d0a9-4dab-a55a-0ab251543b14.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/06-18-55.324_mkngff/d085cc1b-d0a9-4dab-a55a-0ab251543b14.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d085cc1b-d0a9-4dab-a55a-0ab251543b14/d085cc1b-d0a9-4dab-a55a-0ab251543b14.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/06-18-55.324_mkngff/d085cc1b-d0a9-4dab-a55a-0ab251543b14.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d085cc1b-d0a9-4dab-a55a-0ab251543b14/d085cc1b-d0a9-4dab-a55a-0ab251543b14.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/06-18-55.324_mkngff/d085cc1b-d0a9-4dab-a55a-0ab251543b14.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d085cc1b-d0a9-4dab-a55a-0ab251543b14/d085cc1b-d0a9-4dab-a55a-0ab251543b14.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/06-18-55.324_mkngff/d085cc1b-d0a9-4dab-a55a-0ab251543b14.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d085cc1b-d0a9-4dab-a55a-0ab251543b14/d085cc1b-d0a9-4dab-a55a-0ab251543b14.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/06-18-55.324_mkngff/d085cc1b-d0a9-4dab-a55a-0ab251543b14.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d085cc1b-d0a9-4dab-a55a-0ab251543b14/d085cc1b-d0a9-4dab-a55a-0ab251543b14.zarr/3/.zarray']
      ]::text[][]
    );
commit;

