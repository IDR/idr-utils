UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/09-32-59.074_mkngff/c2b59c0f-6499-4d0c-bf93-228927d4fb7e.zarr' where image in (select id from Image where fileset = 4053423);

begin;
    select mkngff_fileset(
      4053423,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/09-32-59.074_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/09-32-59.074_mkngff/c2b59c0f-6499-4d0c-bf93-228927d4fb7e.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/09-32-59.074_mkngff/c2b59c0f-6499-4d0c-bf93-228927d4fb7e.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/09-32-59.074_mkngff/c2b59c0f-6499-4d0c-bf93-228927d4fb7e.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/09-32-59.074_mkngff/c2b59c0f-6499-4d0c-bf93-228927d4fb7e.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/09-32-59.074_mkngff/c2b59c0f-6499-4d0c-bf93-228927d4fb7e.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/09-32-59.074_mkngff/c2b59c0f-6499-4d0c-bf93-228927d4fb7e.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;
