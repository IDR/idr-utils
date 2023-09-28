UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/22-02-11.564_mkngff/aca1c44e-1ddc-4c27-9964-364fed5557ea.zarr' where image in (select id from Image where fileset = 4053305);

begin;
    select mkngff_fileset(
      4053305,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/22-02-11.564_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/22-02-11.564_mkngff/aca1c44e-1ddc-4c27-9964-364fed5557ea.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/22-02-11.564_mkngff/aca1c44e-1ddc-4c27-9964-364fed5557ea.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/22-02-11.564_mkngff/aca1c44e-1ddc-4c27-9964-364fed5557ea.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/22-02-11.564_mkngff/aca1c44e-1ddc-4c27-9964-364fed5557ea.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/22-02-11.564_mkngff/aca1c44e-1ddc-4c27-9964-364fed5557ea.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/02/22-02-11.564_mkngff/aca1c44e-1ddc-4c27-9964-364fed5557ea.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

