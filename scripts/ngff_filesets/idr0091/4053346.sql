UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/02-02-34.667_mkngff/09369079-50e6-486e-9e72-40e7a0eef8ec.zarr' where image in (select id from Image where fileset = 4053346);

begin;
    select mkngff_fileset(
      4053346,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/02-02-34.667_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/02-02-34.667_mkngff/09369079-50e6-486e-9e72-40e7a0eef8ec.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/02-02-34.667_mkngff/09369079-50e6-486e-9e72-40e7a0eef8ec.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/02-02-34.667_mkngff/09369079-50e6-486e-9e72-40e7a0eef8ec.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/02-02-34.667_mkngff/09369079-50e6-486e-9e72-40e7a0eef8ec.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/02-02-34.667_mkngff/09369079-50e6-486e-9e72-40e7a0eef8ec.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/02-02-34.667_mkngff/09369079-50e6-486e-9e72-40e7a0eef8ec.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

