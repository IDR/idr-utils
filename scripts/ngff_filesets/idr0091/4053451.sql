UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/11-21-41.985_mkngff/07608c5c-ea6d-4e93-9443-efe56fc27ea0.zarr' where image in (select id from Image where fileset = 4053451);

begin;
    select mkngff_fileset(
      4053451,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/11-21-41.985_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/11-21-41.985_mkngff/07608c5c-ea6d-4e93-9443-efe56fc27ea0.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/11-21-41.985_mkngff/07608c5c-ea6d-4e93-9443-efe56fc27ea0.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/11-21-41.985_mkngff/07608c5c-ea6d-4e93-9443-efe56fc27ea0.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/11-21-41.985_mkngff/07608c5c-ea6d-4e93-9443-efe56fc27ea0.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/11-21-41.985_mkngff/07608c5c-ea6d-4e93-9443-efe56fc27ea0.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/11-21-41.985_mkngff/07608c5c-ea6d-4e93-9443-efe56fc27ea0.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

