UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/02/21-33-19.956_mkngff/9cec6a7f-9e9a-4727-bbb6-16b5ba84749d.zarr' where image in (select id from Image where fileset = 4053300);

begin;
    select mkngff_fileset(
      4053300,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/02/21-33-19.956_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/02/21-33-19.956_mkngff/9cec6a7f-9e9a-4727-bbb6-16b5ba84749d.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/02/21-33-19.956_mkngff/9cec6a7f-9e9a-4727-bbb6-16b5ba84749d.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/02/21-33-19.956_mkngff/9cec6a7f-9e9a-4727-bbb6-16b5ba84749d.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/02/21-33-19.956_mkngff/9cec6a7f-9e9a-4727-bbb6-16b5ba84749d.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/02/21-33-19.956_mkngff/9cec6a7f-9e9a-4727-bbb6-16b5ba84749d.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/02/21-33-19.956_mkngff/9cec6a7f-9e9a-4727-bbb6-16b5ba84749d.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

