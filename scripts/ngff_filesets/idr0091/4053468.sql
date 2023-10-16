UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/12-09-06.788_mkngff/3952f70c-876c-4021-8bb7-392e8d01b7e1.zarr' where image in (select id from Image where fileset = 4053468);

begin;
    select mkngff_fileset(
      4053468,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/12-09-06.788_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/12-09-06.788_mkngff/3952f70c-876c-4021-8bb7-392e8d01b7e1.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3952f70c-876c-4021-8bb7-392e8d01b7e1/3952f70c-876c-4021-8bb7-392e8d01b7e1.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/12-09-06.788_mkngff/3952f70c-876c-4021-8bb7-392e8d01b7e1.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3952f70c-876c-4021-8bb7-392e8d01b7e1/3952f70c-876c-4021-8bb7-392e8d01b7e1.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/12-09-06.788_mkngff/3952f70c-876c-4021-8bb7-392e8d01b7e1.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3952f70c-876c-4021-8bb7-392e8d01b7e1/3952f70c-876c-4021-8bb7-392e8d01b7e1.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/12-09-06.788_mkngff/3952f70c-876c-4021-8bb7-392e8d01b7e1.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3952f70c-876c-4021-8bb7-392e8d01b7e1/3952f70c-876c-4021-8bb7-392e8d01b7e1.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/12-09-06.788_mkngff/3952f70c-876c-4021-8bb7-392e8d01b7e1.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3952f70c-876c-4021-8bb7-392e8d01b7e1/3952f70c-876c-4021-8bb7-392e8d01b7e1.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2020-10/03/12-09-06.788_mkngff/3952f70c-876c-4021-8bb7-392e8d01b7e1.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/3952f70c-876c-4021-8bb7-392e8d01b7e1/3952f70c-876c-4021-8bb7-392e8d01b7e1.zarr/3/.zarray']
      ]::text[][]
    );
commit;

