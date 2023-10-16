UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/01-15-36.184_mkngff/7f28db47-c5d0-4615-b1ea-d986eaae2eec.zarr' where image in (select id from Image where fileset = 4053339);

begin;
    select mkngff_fileset(
      4053339,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/01-15-36.184_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/01-15-36.184_mkngff/7f28db47-c5d0-4615-b1ea-d986eaae2eec.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7f28db47-c5d0-4615-b1ea-d986eaae2eec/7f28db47-c5d0-4615-b1ea-d986eaae2eec.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/01-15-36.184_mkngff/7f28db47-c5d0-4615-b1ea-d986eaae2eec.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7f28db47-c5d0-4615-b1ea-d986eaae2eec/7f28db47-c5d0-4615-b1ea-d986eaae2eec.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/01-15-36.184_mkngff/7f28db47-c5d0-4615-b1ea-d986eaae2eec.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7f28db47-c5d0-4615-b1ea-d986eaae2eec/7f28db47-c5d0-4615-b1ea-d986eaae2eec.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/01-15-36.184_mkngff/7f28db47-c5d0-4615-b1ea-d986eaae2eec.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7f28db47-c5d0-4615-b1ea-d986eaae2eec/7f28db47-c5d0-4615-b1ea-d986eaae2eec.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/01-15-36.184_mkngff/7f28db47-c5d0-4615-b1ea-d986eaae2eec.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7f28db47-c5d0-4615-b1ea-d986eaae2eec/7f28db47-c5d0-4615-b1ea-d986eaae2eec.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-13/2020-10/03/01-15-36.184_mkngff/7f28db47-c5d0-4615-b1ea-d986eaae2eec.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7f28db47-c5d0-4615-b1ea-d986eaae2eec/7f28db47-c5d0-4615-b1ea-d986eaae2eec.zarr/3/.zarray']
      ]::text[][]
    );
commit;

