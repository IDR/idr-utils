UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/12-20-46.959_mkngff/b135dd07-564f-4fd3-9f90-0c79bf77e6a7.zarr' where image in (select id from Image where fileset = 4053472);

begin;
    select mkngff_fileset(
      4053472,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/12-20-46.959_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/12-20-46.959_mkngff/b135dd07-564f-4fd3-9f90-0c79bf77e6a7.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b135dd07-564f-4fd3-9f90-0c79bf77e6a7/b135dd07-564f-4fd3-9f90-0c79bf77e6a7.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/12-20-46.959_mkngff/b135dd07-564f-4fd3-9f90-0c79bf77e6a7.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b135dd07-564f-4fd3-9f90-0c79bf77e6a7/b135dd07-564f-4fd3-9f90-0c79bf77e6a7.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/12-20-46.959_mkngff/b135dd07-564f-4fd3-9f90-0c79bf77e6a7.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b135dd07-564f-4fd3-9f90-0c79bf77e6a7/b135dd07-564f-4fd3-9f90-0c79bf77e6a7.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/12-20-46.959_mkngff/b135dd07-564f-4fd3-9f90-0c79bf77e6a7.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b135dd07-564f-4fd3-9f90-0c79bf77e6a7/b135dd07-564f-4fd3-9f90-0c79bf77e6a7.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/12-20-46.959_mkngff/b135dd07-564f-4fd3-9f90-0c79bf77e6a7.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b135dd07-564f-4fd3-9f90-0c79bf77e6a7/b135dd07-564f-4fd3-9f90-0c79bf77e6a7.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/12-20-46.959_mkngff/b135dd07-564f-4fd3-9f90-0c79bf77e6a7.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b135dd07-564f-4fd3-9f90-0c79bf77e6a7/b135dd07-564f-4fd3-9f90-0c79bf77e6a7.zarr/3/.zarray']
      ]::text[][]
    );
commit;

