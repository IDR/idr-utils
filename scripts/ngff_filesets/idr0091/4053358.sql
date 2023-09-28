UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/03-20-06.315_mkngff/e57bf154-fdf8-4774-840f-7df7670e2a58.zarr' where image in (select id from Image where fileset = 4053358);

begin;
    select mkngff_fileset(
      4053358,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/03-20-06.315_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/03-20-06.315_mkngff/e57bf154-fdf8-4774-840f-7df7670e2a58.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/03-20-06.315_mkngff/e57bf154-fdf8-4774-840f-7df7670e2a58.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/03-20-06.315_mkngff/e57bf154-fdf8-4774-840f-7df7670e2a58.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/03-20-06.315_mkngff/e57bf154-fdf8-4774-840f-7df7670e2a58.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/03-20-06.315_mkngff/e57bf154-fdf8-4774-840f-7df7670e2a58.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/03-20-06.315_mkngff/e57bf154-fdf8-4774-840f-7df7670e2a58.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

