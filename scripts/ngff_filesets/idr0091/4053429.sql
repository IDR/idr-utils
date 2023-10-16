UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/09-59-06.033_mkngff/00f81aa1-b91f-4a8b-83ba-121aefb0e4fb.zarr' where image in (select id from Image where fileset = 4053429);

begin;
    select mkngff_fileset(
      4053429,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/09-59-06.033_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/09-59-06.033_mkngff/00f81aa1-b91f-4a8b-83ba-121aefb0e4fb.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/00f81aa1-b91f-4a8b-83ba-121aefb0e4fb/00f81aa1-b91f-4a8b-83ba-121aefb0e4fb.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/09-59-06.033_mkngff/00f81aa1-b91f-4a8b-83ba-121aefb0e4fb.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/00f81aa1-b91f-4a8b-83ba-121aefb0e4fb/00f81aa1-b91f-4a8b-83ba-121aefb0e4fb.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/09-59-06.033_mkngff/00f81aa1-b91f-4a8b-83ba-121aefb0e4fb.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/00f81aa1-b91f-4a8b-83ba-121aefb0e4fb/00f81aa1-b91f-4a8b-83ba-121aefb0e4fb.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/09-59-06.033_mkngff/00f81aa1-b91f-4a8b-83ba-121aefb0e4fb.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/00f81aa1-b91f-4a8b-83ba-121aefb0e4fb/00f81aa1-b91f-4a8b-83ba-121aefb0e4fb.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/09-59-06.033_mkngff/00f81aa1-b91f-4a8b-83ba-121aefb0e4fb.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/00f81aa1-b91f-4a8b-83ba-121aefb0e4fb/00f81aa1-b91f-4a8b-83ba-121aefb0e4fb.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/09-59-06.033_mkngff/00f81aa1-b91f-4a8b-83ba-121aefb0e4fb.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/00f81aa1-b91f-4a8b-83ba-121aefb0e4fb/00f81aa1-b91f-4a8b-83ba-121aefb0e4fb.zarr/3/.zarray']
      ]::text[][]
    );
commit;

