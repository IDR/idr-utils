UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/00-34-12.758_mkngff/69c35c34-b0fb-44b5-8a9a-dbfc30434db3.zarr' where image in (select id from Image where fileset = 4053332);

begin;
    select mkngff_fileset(
      4053332,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/00-34-12.758_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/00-34-12.758_mkngff/69c35c34-b0fb-44b5-8a9a-dbfc30434db3.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/00-34-12.758_mkngff/69c35c34-b0fb-44b5-8a9a-dbfc30434db3.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/00-34-12.758_mkngff/69c35c34-b0fb-44b5-8a9a-dbfc30434db3.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/00-34-12.758_mkngff/69c35c34-b0fb-44b5-8a9a-dbfc30434db3.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/00-34-12.758_mkngff/69c35c34-b0fb-44b5-8a9a-dbfc30434db3.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/00-34-12.758_mkngff/69c35c34-b0fb-44b5-8a9a-dbfc30434db3.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

