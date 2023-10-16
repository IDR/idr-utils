UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/02-27-09.895_mkngff/998b4775-52bc-4330-9d3e-2098cdc3ade2.zarr' where image in (select id from Image where fileset = 4053350);

begin;
    select mkngff_fileset(
      4053350,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/02-27-09.895_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/02-27-09.895_mkngff/998b4775-52bc-4330-9d3e-2098cdc3ade2.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/998b4775-52bc-4330-9d3e-2098cdc3ade2/998b4775-52bc-4330-9d3e-2098cdc3ade2.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/02-27-09.895_mkngff/998b4775-52bc-4330-9d3e-2098cdc3ade2.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/998b4775-52bc-4330-9d3e-2098cdc3ade2/998b4775-52bc-4330-9d3e-2098cdc3ade2.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/02-27-09.895_mkngff/998b4775-52bc-4330-9d3e-2098cdc3ade2.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/998b4775-52bc-4330-9d3e-2098cdc3ade2/998b4775-52bc-4330-9d3e-2098cdc3ade2.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/02-27-09.895_mkngff/998b4775-52bc-4330-9d3e-2098cdc3ade2.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/998b4775-52bc-4330-9d3e-2098cdc3ade2/998b4775-52bc-4330-9d3e-2098cdc3ade2.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/02-27-09.895_mkngff/998b4775-52bc-4330-9d3e-2098cdc3ade2.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/998b4775-52bc-4330-9d3e-2098cdc3ade2/998b4775-52bc-4330-9d3e-2098cdc3ade2.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/02-27-09.895_mkngff/998b4775-52bc-4330-9d3e-2098cdc3ade2.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/998b4775-52bc-4330-9d3e-2098cdc3ade2/998b4775-52bc-4330-9d3e-2098cdc3ade2.zarr/3/.zarray']
      ]::text[][]
    );
commit;

