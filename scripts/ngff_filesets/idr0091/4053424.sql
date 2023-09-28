UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/09-37-44.698_mkngff/29b5e932-dd3b-4d08-9a65-98595cb75884.zarr' where image in (select id from Image where fileset = 4053424);

begin;
    select mkngff_fileset(
      4053424,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/09-37-44.698_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/09-37-44.698_mkngff/29b5e932-dd3b-4d08-9a65-98595cb75884.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/09-37-44.698_mkngff/29b5e932-dd3b-4d08-9a65-98595cb75884.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/09-37-44.698_mkngff/29b5e932-dd3b-4d08-9a65-98595cb75884.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/09-37-44.698_mkngff/29b5e932-dd3b-4d08-9a65-98595cb75884.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/09-37-44.698_mkngff/29b5e932-dd3b-4d08-9a65-98595cb75884.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/09-37-44.698_mkngff/29b5e932-dd3b-4d08-9a65-98595cb75884.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

