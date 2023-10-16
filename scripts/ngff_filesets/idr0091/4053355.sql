UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/03-00-16.460_mkngff/b227901f-dae4-44fe-a4bd-667287e3e4db.zarr' where image in (select id from Image where fileset = 4053355);

begin;
    select mkngff_fileset(
      4053355,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/03-00-16.460_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/03-00-16.460_mkngff/b227901f-dae4-44fe-a4bd-667287e3e4db.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b227901f-dae4-44fe-a4bd-667287e3e4db/b227901f-dae4-44fe-a4bd-667287e3e4db.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/03-00-16.460_mkngff/b227901f-dae4-44fe-a4bd-667287e3e4db.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b227901f-dae4-44fe-a4bd-667287e3e4db/b227901f-dae4-44fe-a4bd-667287e3e4db.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/03-00-16.460_mkngff/b227901f-dae4-44fe-a4bd-667287e3e4db.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b227901f-dae4-44fe-a4bd-667287e3e4db/b227901f-dae4-44fe-a4bd-667287e3e4db.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/03-00-16.460_mkngff/b227901f-dae4-44fe-a4bd-667287e3e4db.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b227901f-dae4-44fe-a4bd-667287e3e4db/b227901f-dae4-44fe-a4bd-667287e3e4db.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/03-00-16.460_mkngff/b227901f-dae4-44fe-a4bd-667287e3e4db.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b227901f-dae4-44fe-a4bd-667287e3e4db/b227901f-dae4-44fe-a4bd-667287e3e4db.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/03-00-16.460_mkngff/b227901f-dae4-44fe-a4bd-667287e3e4db.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b227901f-dae4-44fe-a4bd-667287e3e4db/b227901f-dae4-44fe-a4bd-667287e3e4db.zarr/3/.zarray']
      ]::text[][]
    );
commit;

