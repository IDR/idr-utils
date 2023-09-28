UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/00-57-19.337_mkngff/03e12e59-d0cd-456a-99fa-c55dba56b029.zarr' where image in (select id from Image where fileset = 4053336);

begin;
    select mkngff_fileset(
      4053336,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/00-57-19.337_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/00-57-19.337_mkngff/03e12e59-d0cd-456a-99fa-c55dba56b029.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/00-57-19.337_mkngff/03e12e59-d0cd-456a-99fa-c55dba56b029.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/00-57-19.337_mkngff/03e12e59-d0cd-456a-99fa-c55dba56b029.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/00-57-19.337_mkngff/03e12e59-d0cd-456a-99fa-c55dba56b029.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/00-57-19.337_mkngff/03e12e59-d0cd-456a-99fa-c55dba56b029.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/00-57-19.337_mkngff/03e12e59-d0cd-456a-99fa-c55dba56b029.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

