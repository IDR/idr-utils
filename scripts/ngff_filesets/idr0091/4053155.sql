UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/16-00-30.648_mkngff/b842a435-ee55-4a9a-84ee-ece6e3fd850f.zarr' where image in (select id from Image where fileset = 4053155);

begin;
    select mkngff_fileset(
      4053155,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/16-00-30.648_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/16-00-30.648_mkngff/b842a435-ee55-4a9a-84ee-ece6e3fd850f.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/16-00-30.648_mkngff/b842a435-ee55-4a9a-84ee-ece6e3fd850f.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/16-00-30.648_mkngff/b842a435-ee55-4a9a-84ee-ece6e3fd850f.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/16-00-30.648_mkngff/b842a435-ee55-4a9a-84ee-ece6e3fd850f.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/16-00-30.648_mkngff/b842a435-ee55-4a9a-84ee-ece6e3fd850f.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/16-00-30.648_mkngff/b842a435-ee55-4a9a-84ee-ece6e3fd850f.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

