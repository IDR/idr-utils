UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/07-07-12.956_mkngff/461c17b2-5d3e-468a-a7b1-0437bb87cf69.zarr' where image in (select id from Image where fileset = 4053389);

begin;
    select mkngff_fileset(
      4053389,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/07-07-12.956_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/07-07-12.956_mkngff/461c17b2-5d3e-468a-a7b1-0437bb87cf69.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/07-07-12.956_mkngff/461c17b2-5d3e-468a-a7b1-0437bb87cf69.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/07-07-12.956_mkngff/461c17b2-5d3e-468a-a7b1-0437bb87cf69.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/07-07-12.956_mkngff/461c17b2-5d3e-468a-a7b1-0437bb87cf69.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/07-07-12.956_mkngff/461c17b2-5d3e-468a-a7b1-0437bb87cf69.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/07-07-12.956_mkngff/461c17b2-5d3e-468a-a7b1-0437bb87cf69.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

