UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/18-17-56.595_mkngff/97c7b29d-34d5-423f-b0fe-66976dd6f13b.zarr' where image in (select id from Image where fileset = 4053852);

begin;
    select mkngff_fileset(
      4053852,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/18-17-56.595_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/18-17-56.595_mkngff/97c7b29d-34d5-423f-b0fe-66976dd6f13b.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/18-17-56.595_mkngff/97c7b29d-34d5-423f-b0fe-66976dd6f13b.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/18-17-56.595_mkngff/97c7b29d-34d5-423f-b0fe-66976dd6f13b.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/18-17-56.595_mkngff/97c7b29d-34d5-423f-b0fe-66976dd6f13b.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/18-17-56.595_mkngff/97c7b29d-34d5-423f-b0fe-66976dd6f13b.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-5/2020-10/03/18-17-56.595_mkngff/97c7b29d-34d5-423f-b0fe-66976dd6f13b.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

