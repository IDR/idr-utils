UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/17-51-25.958_mkngff/83cb4759-03c6-4691-a4dd-807c828f8acf.zarr' where image in (select id from Image where fileset = 4053175);

begin;
    select mkngff_fileset(
      4053175,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/17-51-25.958_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/17-51-25.958_mkngff/83cb4759-03c6-4691-a4dd-807c828f8acf.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/17-51-25.958_mkngff/83cb4759-03c6-4691-a4dd-807c828f8acf.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/17-51-25.958_mkngff/83cb4759-03c6-4691-a4dd-807c828f8acf.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/17-51-25.958_mkngff/83cb4759-03c6-4691-a4dd-807c828f8acf.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/17-51-25.958_mkngff/83cb4759-03c6-4691-a4dd-807c828f8acf.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/02/17-51-25.958_mkngff/83cb4759-03c6-4691-a4dd-807c828f8acf.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

