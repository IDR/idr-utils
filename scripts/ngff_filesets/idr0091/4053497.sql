UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/14-14-49.245_mkngff/393114ab-1b2e-4780-8620-c542ff6ae259.zarr' where image in (select id from Image where fileset = 4053497);

begin;
    select mkngff_fileset(
      4053497,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/14-14-49.245_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/14-14-49.245_mkngff/393114ab-1b2e-4780-8620-c542ff6ae259.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/14-14-49.245_mkngff/393114ab-1b2e-4780-8620-c542ff6ae259.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/14-14-49.245_mkngff/393114ab-1b2e-4780-8620-c542ff6ae259.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/14-14-49.245_mkngff/393114ab-1b2e-4780-8620-c542ff6ae259.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/14-14-49.245_mkngff/393114ab-1b2e-4780-8620-c542ff6ae259.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/14-14-49.245_mkngff/393114ab-1b2e-4780-8620-c542ff6ae259.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

