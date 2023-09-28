UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/00-00-45.180_mkngff/1d476711-d3cd-4704-bf85-c33923978c53.zarr' where image in (select id from Image where fileset = 4053326);

begin;
    select mkngff_fileset(
      4053326,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/00-00-45.180_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/00-00-45.180_mkngff/1d476711-d3cd-4704-bf85-c33923978c53.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/00-00-45.180_mkngff/1d476711-d3cd-4704-bf85-c33923978c53.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/00-00-45.180_mkngff/1d476711-d3cd-4704-bf85-c33923978c53.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/00-00-45.180_mkngff/1d476711-d3cd-4704-bf85-c33923978c53.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/00-00-45.180_mkngff/1d476711-d3cd-4704-bf85-c33923978c53.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/00-00-45.180_mkngff/1d476711-d3cd-4704-bf85-c33923978c53.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

