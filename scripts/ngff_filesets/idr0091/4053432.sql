UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/10-11-46.554_mkngff/1918a9f9-e455-4221-9223-fcf3063df93f.zarr' where image in (select id from Image where fileset = 4053432);

begin;
    select mkngff_fileset(
      4053432,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/10-11-46.554_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/10-11-46.554_mkngff/1918a9f9-e455-4221-9223-fcf3063df93f.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/10-11-46.554_mkngff/1918a9f9-e455-4221-9223-fcf3063df93f.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/10-11-46.554_mkngff/1918a9f9-e455-4221-9223-fcf3063df93f.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/10-11-46.554_mkngff/1918a9f9-e455-4221-9223-fcf3063df93f.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/10-11-46.554_mkngff/1918a9f9-e455-4221-9223-fcf3063df93f.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/10-11-46.554_mkngff/1918a9f9-e455-4221-9223-fcf3063df93f.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

