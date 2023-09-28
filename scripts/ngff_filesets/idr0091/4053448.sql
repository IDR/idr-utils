UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/11-12-22.117_mkngff/0008e8fc-721f-4465-8ff2-bebcce8bca8a.zarr' where image in (select id from Image where fileset = 4053448);

begin;
    select mkngff_fileset(
      4053448,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/11-12-22.117_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/11-12-22.117_mkngff/0008e8fc-721f-4465-8ff2-bebcce8bca8a.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/11-12-22.117_mkngff/0008e8fc-721f-4465-8ff2-bebcce8bca8a.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/11-12-22.117_mkngff/0008e8fc-721f-4465-8ff2-bebcce8bca8a.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/11-12-22.117_mkngff/0008e8fc-721f-4465-8ff2-bebcce8bca8a.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/11-12-22.117_mkngff/0008e8fc-721f-4465-8ff2-bebcce8bca8a.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2020-10/03/11-12-22.117_mkngff/0008e8fc-721f-4465-8ff2-bebcce8bca8a.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

