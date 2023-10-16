UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/10-56-05.021_mkngff/622f0eac-1af1-4078-8b66-2433d1e869ff.zarr' where image in (select id from Image where fileset = 4053442);

begin;
    select mkngff_fileset(
      4053442,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/10-56-05.021_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/10-56-05.021_mkngff/622f0eac-1af1-4078-8b66-2433d1e869ff.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/622f0eac-1af1-4078-8b66-2433d1e869ff/622f0eac-1af1-4078-8b66-2433d1e869ff.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/10-56-05.021_mkngff/622f0eac-1af1-4078-8b66-2433d1e869ff.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/622f0eac-1af1-4078-8b66-2433d1e869ff/622f0eac-1af1-4078-8b66-2433d1e869ff.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/10-56-05.021_mkngff/622f0eac-1af1-4078-8b66-2433d1e869ff.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/622f0eac-1af1-4078-8b66-2433d1e869ff/622f0eac-1af1-4078-8b66-2433d1e869ff.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/10-56-05.021_mkngff/622f0eac-1af1-4078-8b66-2433d1e869ff.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/622f0eac-1af1-4078-8b66-2433d1e869ff/622f0eac-1af1-4078-8b66-2433d1e869ff.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/10-56-05.021_mkngff/622f0eac-1af1-4078-8b66-2433d1e869ff.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/622f0eac-1af1-4078-8b66-2433d1e869ff/622f0eac-1af1-4078-8b66-2433d1e869ff.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-19/2020-10/03/10-56-05.021_mkngff/622f0eac-1af1-4078-8b66-2433d1e869ff.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/622f0eac-1af1-4078-8b66-2433d1e869ff/622f0eac-1af1-4078-8b66-2433d1e869ff.zarr/3/.zarray']
      ]::text[][]
    );
commit;

