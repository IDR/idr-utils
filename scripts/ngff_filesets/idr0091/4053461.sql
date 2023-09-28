UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/11-49-30.153_mkngff/e001ff83-9f35-431c-b1d7-dcf9ed5ed643.zarr' where image in (select id from Image where fileset = 4053461);

begin;
    select mkngff_fileset(
      4053461,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/11-49-30.153_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/11-49-30.153_mkngff/e001ff83-9f35-431c-b1d7-dcf9ed5ed643.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/11-49-30.153_mkngff/e001ff83-9f35-431c-b1d7-dcf9ed5ed643.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/11-49-30.153_mkngff/e001ff83-9f35-431c-b1d7-dcf9ed5ed643.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/11-49-30.153_mkngff/e001ff83-9f35-431c-b1d7-dcf9ed5ed643.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/11-49-30.153_mkngff/e001ff83-9f35-431c-b1d7-dcf9ed5ed643.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-10/2020-10/03/11-49-30.153_mkngff/e001ff83-9f35-431c-b1d7-dcf9ed5ed643.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

