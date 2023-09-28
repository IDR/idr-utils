UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/11-06-58.196_mkngff/87abc42c-59b7-4b53-93f5-bf361a14f65f.zarr' where image in (select id from Image where fileset = 4053446);

begin;
    select mkngff_fileset(
      4053446,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/11-06-58.196_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/11-06-58.196_mkngff/87abc42c-59b7-4b53-93f5-bf361a14f65f.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/11-06-58.196_mkngff/87abc42c-59b7-4b53-93f5-bf361a14f65f.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/11-06-58.196_mkngff/87abc42c-59b7-4b53-93f5-bf361a14f65f.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/11-06-58.196_mkngff/87abc42c-59b7-4b53-93f5-bf361a14f65f.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/11-06-58.196_mkngff/87abc42c-59b7-4b53-93f5-bf361a14f65f.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/11-06-58.196_mkngff/87abc42c-59b7-4b53-93f5-bf361a14f65f.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

