UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/02/18-01-57.372_mkngff/b136b014-ebee-471f-9aaa-ac45006a4d2f.zarr' where image in (select id from Image where fileset = 4053177);

begin;
    select mkngff_fileset(
      4053177,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/02/18-01-57.372_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/02/18-01-57.372_mkngff/b136b014-ebee-471f-9aaa-ac45006a4d2f.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/02/18-01-57.372_mkngff/b136b014-ebee-471f-9aaa-ac45006a4d2f.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/02/18-01-57.372_mkngff/b136b014-ebee-471f-9aaa-ac45006a4d2f.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/02/18-01-57.372_mkngff/b136b014-ebee-471f-9aaa-ac45006a4d2f.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/02/18-01-57.372_mkngff/b136b014-ebee-471f-9aaa-ac45006a4d2f.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/02/18-01-57.372_mkngff/b136b014-ebee-471f-9aaa-ac45006a4d2f.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

