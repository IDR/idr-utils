UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/04-20-05.333_mkngff/39504e0c-476e-4766-81aa-e7fa99e2d451.zarr' where image in (select id from Image where fileset = 4053366);

begin;
    select mkngff_fileset(
      4053366,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/04-20-05.333_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/04-20-05.333_mkngff/39504e0c-476e-4766-81aa-e7fa99e2d451.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/04-20-05.333_mkngff/39504e0c-476e-4766-81aa-e7fa99e2d451.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/04-20-05.333_mkngff/39504e0c-476e-4766-81aa-e7fa99e2d451.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/04-20-05.333_mkngff/39504e0c-476e-4766-81aa-e7fa99e2d451.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/04-20-05.333_mkngff/39504e0c-476e-4766-81aa-e7fa99e2d451.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2020-10/03/04-20-05.333_mkngff/39504e0c-476e-4766-81aa-e7fa99e2d451.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

