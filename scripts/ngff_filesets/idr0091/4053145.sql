UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/02/15-07-11.449_mkngff/12639217-c2b5-4cb7-bf7c-98f7b3eb7ade.zarr' where image in (select id from Image where fileset = 4053145);

begin;
    select mkngff_fileset(
      4053145,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/02/15-07-11.449_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/02/15-07-11.449_mkngff/12639217-c2b5-4cb7-bf7c-98f7b3eb7ade.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/02/15-07-11.449_mkngff/12639217-c2b5-4cb7-bf7c-98f7b3eb7ade.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/02/15-07-11.449_mkngff/12639217-c2b5-4cb7-bf7c-98f7b3eb7ade.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/02/15-07-11.449_mkngff/12639217-c2b5-4cb7-bf7c-98f7b3eb7ade.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/02/15-07-11.449_mkngff/12639217-c2b5-4cb7-bf7c-98f7b3eb7ade.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/02/15-07-11.449_mkngff/12639217-c2b5-4cb7-bf7c-98f7b3eb7ade.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

