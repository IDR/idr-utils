UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/02/17-39-55.614_mkngff/620758b2-007f-4c47-8493-8cec0bf614c8.zarr' where image in (select id from Image where fileset = 4053173);

begin;
    select mkngff_fileset(
      4053173,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/02/17-39-55.614_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/02/17-39-55.614_mkngff/620758b2-007f-4c47-8493-8cec0bf614c8.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/620758b2-007f-4c47-8493-8cec0bf614c8/620758b2-007f-4c47-8493-8cec0bf614c8.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/02/17-39-55.614_mkngff/620758b2-007f-4c47-8493-8cec0bf614c8.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/620758b2-007f-4c47-8493-8cec0bf614c8/620758b2-007f-4c47-8493-8cec0bf614c8.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/02/17-39-55.614_mkngff/620758b2-007f-4c47-8493-8cec0bf614c8.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/620758b2-007f-4c47-8493-8cec0bf614c8/620758b2-007f-4c47-8493-8cec0bf614c8.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/02/17-39-55.614_mkngff/620758b2-007f-4c47-8493-8cec0bf614c8.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/620758b2-007f-4c47-8493-8cec0bf614c8/620758b2-007f-4c47-8493-8cec0bf614c8.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/02/17-39-55.614_mkngff/620758b2-007f-4c47-8493-8cec0bf614c8.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/620758b2-007f-4c47-8493-8cec0bf614c8/620758b2-007f-4c47-8493-8cec0bf614c8.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/02/17-39-55.614_mkngff/620758b2-007f-4c47-8493-8cec0bf614c8.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/620758b2-007f-4c47-8493-8cec0bf614c8/620758b2-007f-4c47-8493-8cec0bf614c8.zarr/3/.zarray']
      ]::text[][]
    );
commit;

