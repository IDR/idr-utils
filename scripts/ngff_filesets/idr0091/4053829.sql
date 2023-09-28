UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/17-23-33.475_mkngff/a9be318b-ddd6-420e-bb72-7256eeb8427e.zarr' where image in (select id from Image where fileset = 4053829);

begin;
    select mkngff_fileset(
      4053829,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/17-23-33.475_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/17-23-33.475_mkngff/a9be318b-ddd6-420e-bb72-7256eeb8427e.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/17-23-33.475_mkngff/a9be318b-ddd6-420e-bb72-7256eeb8427e.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/17-23-33.475_mkngff/a9be318b-ddd6-420e-bb72-7256eeb8427e.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/17-23-33.475_mkngff/a9be318b-ddd6-420e-bb72-7256eeb8427e.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/17-23-33.475_mkngff/a9be318b-ddd6-420e-bb72-7256eeb8427e.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/17-23-33.475_mkngff/a9be318b-ddd6-420e-bb72-7256eeb8427e.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

