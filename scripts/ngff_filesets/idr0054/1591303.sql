UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-7/2019-03/15/15-28-58.030_mkngff/f49ada41-43bf-47ff-99b9-bdf8cc311ce3.zarr/OME' where image in (select id from Image where fileset = 1591303);

begin;
    select mkngff_fileset(
      1591303,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-7/2019-03/15/15-28-58.030_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2019-03/15/15-28-58.030_mkngff/f49ada41-43bf-47ff-99b9-bdf8cc311ce3.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2019-03/15/15-28-58.030_mkngff/f49ada41-43bf-47ff-99b9-bdf8cc311ce3.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2019-03/15/15-28-58.030_mkngff/f49ada41-43bf-47ff-99b9-bdf8cc311ce3.zarr/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2019-03/15/15-28-58.030_mkngff/f49ada41-43bf-47ff-99b9-bdf8cc311ce3.zarr/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2019-03/15/15-28-58.030_mkngff/f49ada41-43bf-47ff-99b9-bdf8cc311ce3.zarr/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2019-03/15/15-28-58.030_mkngff/f49ada41-43bf-47ff-99b9-bdf8cc311ce3.zarr/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2019-03/15/15-28-58.030_mkngff/f49ada41-43bf-47ff-99b9-bdf8cc311ce3.zarr/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2019-03/15/15-28-58.030_mkngff/f49ada41-43bf-47ff-99b9-bdf8cc311ce3.zarr/0/3/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2019-03/15/15-28-58.030_mkngff/f49ada41-43bf-47ff-99b9-bdf8cc311ce3.zarr/0/4/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2019-03/15/15-28-58.030_mkngff/f49ada41-43bf-47ff-99b9-bdf8cc311ce3.zarr/OME/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2019-03/15/15-28-58.030_mkngff/f49ada41-43bf-47ff-99b9-bdf8cc311ce3.zarr/OME/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-7/2019-03/15/15-28-58.030_mkngff/f49ada41-43bf-47ff-99b9-bdf8cc311ce3.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream']
      ]::text[][]
    );
commit;

