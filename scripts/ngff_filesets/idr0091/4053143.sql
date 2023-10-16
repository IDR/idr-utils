UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/14-57-03.867_mkngff/d28d77b1-5807-47fc-b3a6-57e58b93632f.zarr' where image in (select id from Image where fileset = 4053143);

begin;
    select mkngff_fileset(
      4053143,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/14-57-03.867_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/14-57-03.867_mkngff/d28d77b1-5807-47fc-b3a6-57e58b93632f.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d28d77b1-5807-47fc-b3a6-57e58b93632f/d28d77b1-5807-47fc-b3a6-57e58b93632f.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/14-57-03.867_mkngff/d28d77b1-5807-47fc-b3a6-57e58b93632f.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d28d77b1-5807-47fc-b3a6-57e58b93632f/d28d77b1-5807-47fc-b3a6-57e58b93632f.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/14-57-03.867_mkngff/d28d77b1-5807-47fc-b3a6-57e58b93632f.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d28d77b1-5807-47fc-b3a6-57e58b93632f/d28d77b1-5807-47fc-b3a6-57e58b93632f.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/14-57-03.867_mkngff/d28d77b1-5807-47fc-b3a6-57e58b93632f.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d28d77b1-5807-47fc-b3a6-57e58b93632f/d28d77b1-5807-47fc-b3a6-57e58b93632f.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/14-57-03.867_mkngff/d28d77b1-5807-47fc-b3a6-57e58b93632f.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d28d77b1-5807-47fc-b3a6-57e58b93632f/d28d77b1-5807-47fc-b3a6-57e58b93632f.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/14-57-03.867_mkngff/d28d77b1-5807-47fc-b3a6-57e58b93632f.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/d28d77b1-5807-47fc-b3a6-57e58b93632f/d28d77b1-5807-47fc-b3a6-57e58b93632f.zarr/3/.zarray']
      ]::text[][]
    );
commit;

