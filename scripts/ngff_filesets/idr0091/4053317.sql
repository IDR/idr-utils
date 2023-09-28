UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/02/23-08-40.514_mkngff/f17bdd6d-c983-4fef-a5ba-ce810bdc6a70.zarr' where image in (select id from Image where fileset = 4053317);

begin;
    select mkngff_fileset(
      4053317,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/02/23-08-40.514_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/02/23-08-40.514_mkngff/f17bdd6d-c983-4fef-a5ba-ce810bdc6a70.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/02/23-08-40.514_mkngff/f17bdd6d-c983-4fef-a5ba-ce810bdc6a70.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/02/23-08-40.514_mkngff/f17bdd6d-c983-4fef-a5ba-ce810bdc6a70.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/02/23-08-40.514_mkngff/f17bdd6d-c983-4fef-a5ba-ce810bdc6a70.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/02/23-08-40.514_mkngff/f17bdd6d-c983-4fef-a5ba-ce810bdc6a70.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/02/23-08-40.514_mkngff/f17bdd6d-c983-4fef-a5ba-ce810bdc6a70.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

