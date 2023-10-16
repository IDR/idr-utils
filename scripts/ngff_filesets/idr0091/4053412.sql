UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/08-44-09.466_mkngff/e0d1fb61-2376-45d1-88dc-0c0db0028020.zarr' where image in (select id from Image where fileset = 4053412);

begin;
    select mkngff_fileset(
      4053412,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/08-44-09.466_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/08-44-09.466_mkngff/e0d1fb61-2376-45d1-88dc-0c0db0028020.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e0d1fb61-2376-45d1-88dc-0c0db0028020/e0d1fb61-2376-45d1-88dc-0c0db0028020.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/08-44-09.466_mkngff/e0d1fb61-2376-45d1-88dc-0c0db0028020.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e0d1fb61-2376-45d1-88dc-0c0db0028020/e0d1fb61-2376-45d1-88dc-0c0db0028020.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/08-44-09.466_mkngff/e0d1fb61-2376-45d1-88dc-0c0db0028020.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e0d1fb61-2376-45d1-88dc-0c0db0028020/e0d1fb61-2376-45d1-88dc-0c0db0028020.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/08-44-09.466_mkngff/e0d1fb61-2376-45d1-88dc-0c0db0028020.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e0d1fb61-2376-45d1-88dc-0c0db0028020/e0d1fb61-2376-45d1-88dc-0c0db0028020.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/08-44-09.466_mkngff/e0d1fb61-2376-45d1-88dc-0c0db0028020.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e0d1fb61-2376-45d1-88dc-0c0db0028020/e0d1fb61-2376-45d1-88dc-0c0db0028020.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/08-44-09.466_mkngff/e0d1fb61-2376-45d1-88dc-0c0db0028020.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e0d1fb61-2376-45d1-88dc-0c0db0028020/e0d1fb61-2376-45d1-88dc-0c0db0028020.zarr/3/.zarray']
      ]::text[][]
    );
commit;

