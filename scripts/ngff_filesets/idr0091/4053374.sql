UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/05-21-26.278_mkngff/05eb785a-9989-4e93-a18d-adf6dd60615b.zarr' where image in (select id from Image where fileset = 4053374);

begin;
    select mkngff_fileset(
      4053374,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/05-21-26.278_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/05-21-26.278_mkngff/05eb785a-9989-4e93-a18d-adf6dd60615b.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/05eb785a-9989-4e93-a18d-adf6dd60615b/05eb785a-9989-4e93-a18d-adf6dd60615b.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/05-21-26.278_mkngff/05eb785a-9989-4e93-a18d-adf6dd60615b.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/05eb785a-9989-4e93-a18d-adf6dd60615b/05eb785a-9989-4e93-a18d-adf6dd60615b.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/05-21-26.278_mkngff/05eb785a-9989-4e93-a18d-adf6dd60615b.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/05eb785a-9989-4e93-a18d-adf6dd60615b/05eb785a-9989-4e93-a18d-adf6dd60615b.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/05-21-26.278_mkngff/05eb785a-9989-4e93-a18d-adf6dd60615b.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/05eb785a-9989-4e93-a18d-adf6dd60615b/05eb785a-9989-4e93-a18d-adf6dd60615b.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/05-21-26.278_mkngff/05eb785a-9989-4e93-a18d-adf6dd60615b.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/05eb785a-9989-4e93-a18d-adf6dd60615b/05eb785a-9989-4e93-a18d-adf6dd60615b.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/05-21-26.278_mkngff/05eb785a-9989-4e93-a18d-adf6dd60615b.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/05eb785a-9989-4e93-a18d-adf6dd60615b/05eb785a-9989-4e93-a18d-adf6dd60615b.zarr/3/.zarray']
      ]::text[][]
    );
commit;

