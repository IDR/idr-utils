UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/16-18-19.710_mkngff/4771567a-ed12-473d-82a0-57efe80567ad.zarr' where image in (select id from Image where fileset = 4053802);

begin;
    select mkngff_fileset(
      4053802,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/16-18-19.710_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/16-18-19.710_mkngff/4771567a-ed12-473d-82a0-57efe80567ad.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/4771567a-ed12-473d-82a0-57efe80567ad/4771567a-ed12-473d-82a0-57efe80567ad.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/16-18-19.710_mkngff/4771567a-ed12-473d-82a0-57efe80567ad.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/4771567a-ed12-473d-82a0-57efe80567ad/4771567a-ed12-473d-82a0-57efe80567ad.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/16-18-19.710_mkngff/4771567a-ed12-473d-82a0-57efe80567ad.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/4771567a-ed12-473d-82a0-57efe80567ad/4771567a-ed12-473d-82a0-57efe80567ad.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/16-18-19.710_mkngff/4771567a-ed12-473d-82a0-57efe80567ad.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/4771567a-ed12-473d-82a0-57efe80567ad/4771567a-ed12-473d-82a0-57efe80567ad.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/16-18-19.710_mkngff/4771567a-ed12-473d-82a0-57efe80567ad.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/4771567a-ed12-473d-82a0-57efe80567ad/4771567a-ed12-473d-82a0-57efe80567ad.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/16-18-19.710_mkngff/4771567a-ed12-473d-82a0-57efe80567ad.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/4771567a-ed12-473d-82a0-57efe80567ad/4771567a-ed12-473d-82a0-57efe80567ad.zarr/3/.zarray']
      ]::text[][]
    );
commit;

