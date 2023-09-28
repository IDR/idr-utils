UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/03-13-23.000_mkngff/47286573-3a02-437b-b9fa-e90ab3ed0c21.zarr' where image in (select id from Image where fileset = 4053357);

begin;
    select mkngff_fileset(
      4053357,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/03-13-23.000_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/03-13-23.000_mkngff/47286573-3a02-437b-b9fa-e90ab3ed0c21.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/03-13-23.000_mkngff/47286573-3a02-437b-b9fa-e90ab3ed0c21.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/03-13-23.000_mkngff/47286573-3a02-437b-b9fa-e90ab3ed0c21.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/03-13-23.000_mkngff/47286573-3a02-437b-b9fa-e90ab3ed0c21.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/03-13-23.000_mkngff/47286573-3a02-437b-b9fa-e90ab3ed0c21.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/03-13-23.000_mkngff/47286573-3a02-437b-b9fa-e90ab3ed0c21.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

