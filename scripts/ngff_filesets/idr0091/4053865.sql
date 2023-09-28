UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/18-48-59.765_mkngff/882f80fa-f40f-455b-b923-09dce086675b.zarr' where image in (select id from Image where fileset = 4053865);

begin;
    select mkngff_fileset(
      4053865,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/18-48-59.765_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/18-48-59.765_mkngff/882f80fa-f40f-455b-b923-09dce086675b.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/18-48-59.765_mkngff/882f80fa-f40f-455b-b923-09dce086675b.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/18-48-59.765_mkngff/882f80fa-f40f-455b-b923-09dce086675b.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/18-48-59.765_mkngff/882f80fa-f40f-455b-b923-09dce086675b.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/18-48-59.765_mkngff/882f80fa-f40f-455b-b923-09dce086675b.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/18-48-59.765_mkngff/882f80fa-f40f-455b-b923-09dce086675b.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

