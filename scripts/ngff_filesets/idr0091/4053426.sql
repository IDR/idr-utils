UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/09-46-05.759_mkngff/e853cc5b-bde6-483e-b14a-e7540926bf7f.zarr' where image in (select id from Image where fileset = 4053426);

begin;
    select mkngff_fileset(
      4053426,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/09-46-05.759_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/09-46-05.759_mkngff/e853cc5b-bde6-483e-b14a-e7540926bf7f.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/09-46-05.759_mkngff/e853cc5b-bde6-483e-b14a-e7540926bf7f.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/09-46-05.759_mkngff/e853cc5b-bde6-483e-b14a-e7540926bf7f.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/09-46-05.759_mkngff/e853cc5b-bde6-483e-b14a-e7540926bf7f.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/09-46-05.759_mkngff/e853cc5b-bde6-483e-b14a-e7540926bf7f.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/09-46-05.759_mkngff/e853cc5b-bde6-483e-b14a-e7540926bf7f.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

