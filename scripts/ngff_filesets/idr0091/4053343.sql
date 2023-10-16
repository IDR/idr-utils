UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/01-42-47.127_mkngff/c0508509-66c3-4c45-984c-8306ec134244.zarr' where image in (select id from Image where fileset = 4053343);

begin;
    select mkngff_fileset(
      4053343,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/01-42-47.127_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/01-42-47.127_mkngff/c0508509-66c3-4c45-984c-8306ec134244.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/c0508509-66c3-4c45-984c-8306ec134244/c0508509-66c3-4c45-984c-8306ec134244.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/01-42-47.127_mkngff/c0508509-66c3-4c45-984c-8306ec134244.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/c0508509-66c3-4c45-984c-8306ec134244/c0508509-66c3-4c45-984c-8306ec134244.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/01-42-47.127_mkngff/c0508509-66c3-4c45-984c-8306ec134244.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/c0508509-66c3-4c45-984c-8306ec134244/c0508509-66c3-4c45-984c-8306ec134244.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/01-42-47.127_mkngff/c0508509-66c3-4c45-984c-8306ec134244.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/c0508509-66c3-4c45-984c-8306ec134244/c0508509-66c3-4c45-984c-8306ec134244.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/01-42-47.127_mkngff/c0508509-66c3-4c45-984c-8306ec134244.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/c0508509-66c3-4c45-984c-8306ec134244/c0508509-66c3-4c45-984c-8306ec134244.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/01-42-47.127_mkngff/c0508509-66c3-4c45-984c-8306ec134244.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/c0508509-66c3-4c45-984c-8306ec134244/c0508509-66c3-4c45-984c-8306ec134244.zarr/3/.zarray']
      ]::text[][]
    );
commit;

