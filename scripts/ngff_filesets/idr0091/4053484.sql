UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/13-01-57.662_mkngff/4ae649ec-962c-4ba7-b60f-d649e4233284.zarr' where image in (select id from Image where fileset = 4053484);

begin;
    select mkngff_fileset(
      4053484,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/13-01-57.662_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/13-01-57.662_mkngff/4ae649ec-962c-4ba7-b60f-d649e4233284.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/13-01-57.662_mkngff/4ae649ec-962c-4ba7-b60f-d649e4233284.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/13-01-57.662_mkngff/4ae649ec-962c-4ba7-b60f-d649e4233284.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/13-01-57.662_mkngff/4ae649ec-962c-4ba7-b60f-d649e4233284.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/13-01-57.662_mkngff/4ae649ec-962c-4ba7-b60f-d649e4233284.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/13-01-57.662_mkngff/4ae649ec-962c-4ba7-b60f-d649e4233284.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

