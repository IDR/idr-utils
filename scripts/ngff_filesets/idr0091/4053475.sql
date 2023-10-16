UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/12-29-29.549_mkngff/be21ad19-f9fe-431b-bb83-eb1601b284b1.zarr' where image in (select id from Image where fileset = 4053475);

begin;
    select mkngff_fileset(
      4053475,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/12-29-29.549_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/12-29-29.549_mkngff/be21ad19-f9fe-431b-bb83-eb1601b284b1.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/be21ad19-f9fe-431b-bb83-eb1601b284b1/be21ad19-f9fe-431b-bb83-eb1601b284b1.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/12-29-29.549_mkngff/be21ad19-f9fe-431b-bb83-eb1601b284b1.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/be21ad19-f9fe-431b-bb83-eb1601b284b1/be21ad19-f9fe-431b-bb83-eb1601b284b1.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/12-29-29.549_mkngff/be21ad19-f9fe-431b-bb83-eb1601b284b1.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/be21ad19-f9fe-431b-bb83-eb1601b284b1/be21ad19-f9fe-431b-bb83-eb1601b284b1.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/12-29-29.549_mkngff/be21ad19-f9fe-431b-bb83-eb1601b284b1.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/be21ad19-f9fe-431b-bb83-eb1601b284b1/be21ad19-f9fe-431b-bb83-eb1601b284b1.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/12-29-29.549_mkngff/be21ad19-f9fe-431b-bb83-eb1601b284b1.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/be21ad19-f9fe-431b-bb83-eb1601b284b1/be21ad19-f9fe-431b-bb83-eb1601b284b1.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/12-29-29.549_mkngff/be21ad19-f9fe-431b-bb83-eb1601b284b1.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/be21ad19-f9fe-431b-bb83-eb1601b284b1/be21ad19-f9fe-431b-bb83-eb1601b284b1.zarr/3/.zarray']
      ]::text[][]
    );
commit;

