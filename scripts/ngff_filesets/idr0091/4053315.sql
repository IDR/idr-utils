UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/22-55-19.692_mkngff/352ac64f-47f3-4aca-8a71-a1bfe17cf828.zarr' where image in (select id from Image where fileset = 4053315);

begin;
    select mkngff_fileset(
      4053315,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/22-55-19.692_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/22-55-19.692_mkngff/352ac64f-47f3-4aca-8a71-a1bfe17cf828.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/352ac64f-47f3-4aca-8a71-a1bfe17cf828/352ac64f-47f3-4aca-8a71-a1bfe17cf828.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/22-55-19.692_mkngff/352ac64f-47f3-4aca-8a71-a1bfe17cf828.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/352ac64f-47f3-4aca-8a71-a1bfe17cf828/352ac64f-47f3-4aca-8a71-a1bfe17cf828.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/22-55-19.692_mkngff/352ac64f-47f3-4aca-8a71-a1bfe17cf828.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/352ac64f-47f3-4aca-8a71-a1bfe17cf828/352ac64f-47f3-4aca-8a71-a1bfe17cf828.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/22-55-19.692_mkngff/352ac64f-47f3-4aca-8a71-a1bfe17cf828.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/352ac64f-47f3-4aca-8a71-a1bfe17cf828/352ac64f-47f3-4aca-8a71-a1bfe17cf828.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/22-55-19.692_mkngff/352ac64f-47f3-4aca-8a71-a1bfe17cf828.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/352ac64f-47f3-4aca-8a71-a1bfe17cf828/352ac64f-47f3-4aca-8a71-a1bfe17cf828.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/22-55-19.692_mkngff/352ac64f-47f3-4aca-8a71-a1bfe17cf828.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/352ac64f-47f3-4aca-8a71-a1bfe17cf828/352ac64f-47f3-4aca-8a71-a1bfe17cf828.zarr/3/.zarray']
      ]::text[][]
    );
commit;

