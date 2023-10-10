UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/17-13-52.941_mkngff/8c771ad1-015d-49f5-82ce-657b53482627.zarr' where image in (select id from Image where fileset = 4053825);

begin;
    select mkngff_fileset(
      4053825,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/17-13-52.941_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/17-13-52.941_mkngff/8c771ad1-015d-49f5-82ce-657b53482627.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/17-13-52.941_mkngff/8c771ad1-015d-49f5-82ce-657b53482627.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/17-13-52.941_mkngff/8c771ad1-015d-49f5-82ce-657b53482627.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/17-13-52.941_mkngff/8c771ad1-015d-49f5-82ce-657b53482627.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/17-13-52.941_mkngff/8c771ad1-015d-49f5-82ce-657b53482627.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/17-13-52.941_mkngff/8c771ad1-015d-49f5-82ce-657b53482627.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;
