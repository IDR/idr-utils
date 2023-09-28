UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/03-34-23.500_mkngff/3aee0d6a-d40c-4eee-8ecc-3bd79b9a9cb1.zarr' where image in (select id from Image where fileset = 4053360);

begin;
    select mkngff_fileset(
      4053360,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/03-34-23.500_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/03-34-23.500_mkngff/3aee0d6a-d40c-4eee-8ecc-3bd79b9a9cb1.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/03-34-23.500_mkngff/3aee0d6a-d40c-4eee-8ecc-3bd79b9a9cb1.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/03-34-23.500_mkngff/3aee0d6a-d40c-4eee-8ecc-3bd79b9a9cb1.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/03-34-23.500_mkngff/3aee0d6a-d40c-4eee-8ecc-3bd79b9a9cb1.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/03-34-23.500_mkngff/3aee0d6a-d40c-4eee-8ecc-3bd79b9a9cb1.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-17/2020-10/03/03-34-23.500_mkngff/3aee0d6a-d40c-4eee-8ecc-3bd79b9a9cb1.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

