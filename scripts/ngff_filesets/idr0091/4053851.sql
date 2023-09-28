UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/18-15-40.837_mkngff/de82a935-3143-4ce3-9439-9ab986237b09.zarr' where image in (select id from Image where fileset = 4053851);

begin;
    select mkngff_fileset(
      4053851,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/18-15-40.837_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/18-15-40.837_mkngff/de82a935-3143-4ce3-9439-9ab986237b09.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/18-15-40.837_mkngff/de82a935-3143-4ce3-9439-9ab986237b09.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/18-15-40.837_mkngff/de82a935-3143-4ce3-9439-9ab986237b09.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/18-15-40.837_mkngff/de82a935-3143-4ce3-9439-9ab986237b09.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/18-15-40.837_mkngff/de82a935-3143-4ce3-9439-9ab986237b09.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-16/2020-10/03/18-15-40.837_mkngff/de82a935-3143-4ce3-9439-9ab986237b09.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

