UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/06-40-44.062_mkngff/7b3158f7-1ee1-4af7-be16-df3e5413af6d.zarr' where image in (select id from Image where fileset = 4053385);

begin;
    select mkngff_fileset(
      4053385,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/06-40-44.062_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/06-40-44.062_mkngff/7b3158f7-1ee1-4af7-be16-df3e5413af6d.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7b3158f7-1ee1-4af7-be16-df3e5413af6d/7b3158f7-1ee1-4af7-be16-df3e5413af6d.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/06-40-44.062_mkngff/7b3158f7-1ee1-4af7-be16-df3e5413af6d.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7b3158f7-1ee1-4af7-be16-df3e5413af6d/7b3158f7-1ee1-4af7-be16-df3e5413af6d.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/06-40-44.062_mkngff/7b3158f7-1ee1-4af7-be16-df3e5413af6d.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7b3158f7-1ee1-4af7-be16-df3e5413af6d/7b3158f7-1ee1-4af7-be16-df3e5413af6d.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/06-40-44.062_mkngff/7b3158f7-1ee1-4af7-be16-df3e5413af6d.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7b3158f7-1ee1-4af7-be16-df3e5413af6d/7b3158f7-1ee1-4af7-be16-df3e5413af6d.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/06-40-44.062_mkngff/7b3158f7-1ee1-4af7-be16-df3e5413af6d.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7b3158f7-1ee1-4af7-be16-df3e5413af6d/7b3158f7-1ee1-4af7-be16-df3e5413af6d.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/06-40-44.062_mkngff/7b3158f7-1ee1-4af7-be16-df3e5413af6d.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/7b3158f7-1ee1-4af7-be16-df3e5413af6d/7b3158f7-1ee1-4af7-be16-df3e5413af6d.zarr/3/.zarray']
      ]::text[][]
    );
commit;

