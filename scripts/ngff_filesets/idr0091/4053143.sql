UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/14-57-03.867_mkngff/d28d77b1-5807-47fc-b3a6-57e58b93632f.zarr' where image in (select id from Image where fileset = 4053143);

begin;
    select mkngff_fileset(
      4053143,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/14-57-03.867_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/14-57-03.867_mkngff/d28d77b1-5807-47fc-b3a6-57e58b93632f.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/14-57-03.867_mkngff/d28d77b1-5807-47fc-b3a6-57e58b93632f.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/14-57-03.867_mkngff/d28d77b1-5807-47fc-b3a6-57e58b93632f.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/14-57-03.867_mkngff/d28d77b1-5807-47fc-b3a6-57e58b93632f.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/14-57-03.867_mkngff/d28d77b1-5807-47fc-b3a6-57e58b93632f.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/02/14-57-03.867_mkngff/d28d77b1-5807-47fc-b3a6-57e58b93632f.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

