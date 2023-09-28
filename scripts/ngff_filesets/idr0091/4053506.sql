UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/15-05-18.959_mkngff/64fc07e9-3bf7-4d1d-9e47-49a5fed9d576.zarr' where image in (select id from Image where fileset = 4053506);

begin;
    select mkngff_fileset(
      4053506,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/15-05-18.959_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/15-05-18.959_mkngff/64fc07e9-3bf7-4d1d-9e47-49a5fed9d576.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/15-05-18.959_mkngff/64fc07e9-3bf7-4d1d-9e47-49a5fed9d576.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/15-05-18.959_mkngff/64fc07e9-3bf7-4d1d-9e47-49a5fed9d576.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/15-05-18.959_mkngff/64fc07e9-3bf7-4d1d-9e47-49a5fed9d576.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/15-05-18.959_mkngff/64fc07e9-3bf7-4d1d-9e47-49a5fed9d576.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/15-05-18.959_mkngff/64fc07e9-3bf7-4d1d-9e47-49a5fed9d576.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

