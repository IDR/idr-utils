UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/10-37-40.202_mkngff/040d0262-cf47-4ddd-b5c7-cad13bf98ada.zarr' where image in (select id from Image where fileset = 4053438);

begin;
    select mkngff_fileset(
      4053438,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/10-37-40.202_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/10-37-40.202_mkngff/040d0262-cf47-4ddd-b5c7-cad13bf98ada.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/040d0262-cf47-4ddd-b5c7-cad13bf98ada/040d0262-cf47-4ddd-b5c7-cad13bf98ada.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/10-37-40.202_mkngff/040d0262-cf47-4ddd-b5c7-cad13bf98ada.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/040d0262-cf47-4ddd-b5c7-cad13bf98ada/040d0262-cf47-4ddd-b5c7-cad13bf98ada.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/10-37-40.202_mkngff/040d0262-cf47-4ddd-b5c7-cad13bf98ada.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/040d0262-cf47-4ddd-b5c7-cad13bf98ada/040d0262-cf47-4ddd-b5c7-cad13bf98ada.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/10-37-40.202_mkngff/040d0262-cf47-4ddd-b5c7-cad13bf98ada.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/040d0262-cf47-4ddd-b5c7-cad13bf98ada/040d0262-cf47-4ddd-b5c7-cad13bf98ada.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/10-37-40.202_mkngff/040d0262-cf47-4ddd-b5c7-cad13bf98ada.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/040d0262-cf47-4ddd-b5c7-cad13bf98ada/040d0262-cf47-4ddd-b5c7-cad13bf98ada.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/10-37-40.202_mkngff/040d0262-cf47-4ddd-b5c7-cad13bf98ada.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/040d0262-cf47-4ddd-b5c7-cad13bf98ada/040d0262-cf47-4ddd-b5c7-cad13bf98ada.zarr/3/.zarray']
      ]::text[][]
    );
commit;

