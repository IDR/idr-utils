UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/10-24-56.546_mkngff/b1df029c-a7f3-4c45-bae9-051fde3f7b4b.zarr' where image in (select id from Image where fileset = 4053435);

begin;
    select mkngff_fileset(
      4053435,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/10-24-56.546_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/10-24-56.546_mkngff/b1df029c-a7f3-4c45-bae9-051fde3f7b4b.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b1df029c-a7f3-4c45-bae9-051fde3f7b4b/b1df029c-a7f3-4c45-bae9-051fde3f7b4b.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/10-24-56.546_mkngff/b1df029c-a7f3-4c45-bae9-051fde3f7b4b.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b1df029c-a7f3-4c45-bae9-051fde3f7b4b/b1df029c-a7f3-4c45-bae9-051fde3f7b4b.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/10-24-56.546_mkngff/b1df029c-a7f3-4c45-bae9-051fde3f7b4b.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b1df029c-a7f3-4c45-bae9-051fde3f7b4b/b1df029c-a7f3-4c45-bae9-051fde3f7b4b.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/10-24-56.546_mkngff/b1df029c-a7f3-4c45-bae9-051fde3f7b4b.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b1df029c-a7f3-4c45-bae9-051fde3f7b4b/b1df029c-a7f3-4c45-bae9-051fde3f7b4b.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/10-24-56.546_mkngff/b1df029c-a7f3-4c45-bae9-051fde3f7b4b.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b1df029c-a7f3-4c45-bae9-051fde3f7b4b/b1df029c-a7f3-4c45-bae9-051fde3f7b4b.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/10-24-56.546_mkngff/b1df029c-a7f3-4c45-bae9-051fde3f7b4b.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b1df029c-a7f3-4c45-bae9-051fde3f7b4b/b1df029c-a7f3-4c45-bae9-051fde3f7b4b.zarr/3/.zarray']
      ]::text[][]
    );
commit;

