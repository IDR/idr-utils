UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/09-16-00.136_mkngff/519a5f7a-2649-4bf5-8139-da927d4f9322.zarr' where image in (select id from Image where fileset = 4053419);

begin;
    select mkngff_fileset(
      4053419,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/09-16-00.136_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/09-16-00.136_mkngff/519a5f7a-2649-4bf5-8139-da927d4f9322.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/09-16-00.136_mkngff/519a5f7a-2649-4bf5-8139-da927d4f9322.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/09-16-00.136_mkngff/519a5f7a-2649-4bf5-8139-da927d4f9322.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/09-16-00.136_mkngff/519a5f7a-2649-4bf5-8139-da927d4f9322.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/09-16-00.136_mkngff/519a5f7a-2649-4bf5-8139-da927d4f9322.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/09-16-00.136_mkngff/519a5f7a-2649-4bf5-8139-da927d4f9322.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

