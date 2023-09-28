UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/03-47-27.261_mkngff/b06dc363-1cd3-4e99-b4ce-1ab076bbdd75.zarr' where image in (select id from Image where fileset = 4053362);

begin;
    select mkngff_fileset(
      4053362,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/03-47-27.261_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/03-47-27.261_mkngff/b06dc363-1cd3-4e99-b4ce-1ab076bbdd75.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/03-47-27.261_mkngff/b06dc363-1cd3-4e99-b4ce-1ab076bbdd75.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/03-47-27.261_mkngff/b06dc363-1cd3-4e99-b4ce-1ab076bbdd75.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/03-47-27.261_mkngff/b06dc363-1cd3-4e99-b4ce-1ab076bbdd75.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/03-47-27.261_mkngff/b06dc363-1cd3-4e99-b4ce-1ab076bbdd75.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2020-10/03/03-47-27.261_mkngff/b06dc363-1cd3-4e99-b4ce-1ab076bbdd75.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

