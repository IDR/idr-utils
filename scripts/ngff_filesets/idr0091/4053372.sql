UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/05-07-30.998_mkngff/750422e7-d972-4407-ad33-ed943388363f.zarr' where image in (select id from Image where fileset = 4053372);

begin;
    select mkngff_fileset(
      4053372,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/05-07-30.998_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/05-07-30.998_mkngff/750422e7-d972-4407-ad33-ed943388363f.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/750422e7-d972-4407-ad33-ed943388363f/750422e7-d972-4407-ad33-ed943388363f.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/05-07-30.998_mkngff/750422e7-d972-4407-ad33-ed943388363f.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/750422e7-d972-4407-ad33-ed943388363f/750422e7-d972-4407-ad33-ed943388363f.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/05-07-30.998_mkngff/750422e7-d972-4407-ad33-ed943388363f.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/750422e7-d972-4407-ad33-ed943388363f/750422e7-d972-4407-ad33-ed943388363f.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/05-07-30.998_mkngff/750422e7-d972-4407-ad33-ed943388363f.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/750422e7-d972-4407-ad33-ed943388363f/750422e7-d972-4407-ad33-ed943388363f.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/05-07-30.998_mkngff/750422e7-d972-4407-ad33-ed943388363f.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/750422e7-d972-4407-ad33-ed943388363f/750422e7-d972-4407-ad33-ed943388363f.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/05-07-30.998_mkngff/750422e7-d972-4407-ad33-ed943388363f.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/750422e7-d972-4407-ad33-ed943388363f/750422e7-d972-4407-ad33-ed943388363f.zarr/3/.zarray']
      ]::text[][]
    );
commit;

