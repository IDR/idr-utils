UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/06-04-38.538_mkngff/5ccbc9cb-6b10-43c7-8827-46adb815b00b.zarr' where image in (select id from Image where fileset = 4053380);

begin;
    select mkngff_fileset(
      4053380,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/06-04-38.538_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/06-04-38.538_mkngff/5ccbc9cb-6b10-43c7-8827-46adb815b00b.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/06-04-38.538_mkngff/5ccbc9cb-6b10-43c7-8827-46adb815b00b.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/06-04-38.538_mkngff/5ccbc9cb-6b10-43c7-8827-46adb815b00b.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/06-04-38.538_mkngff/5ccbc9cb-6b10-43c7-8827-46adb815b00b.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/06-04-38.538_mkngff/5ccbc9cb-6b10-43c7-8827-46adb815b00b.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/06-04-38.538_mkngff/5ccbc9cb-6b10-43c7-8827-46adb815b00b.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

