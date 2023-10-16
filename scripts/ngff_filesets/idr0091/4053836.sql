UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/17-40-19.194_mkngff/2f62e8ca-f213-4399-9ecf-140b87a26aed.zarr' where image in (select id from Image where fileset = 4053836);

begin;
    select mkngff_fileset(
      4053836,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/17-40-19.194_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/17-40-19.194_mkngff/2f62e8ca-f213-4399-9ecf-140b87a26aed.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/2f62e8ca-f213-4399-9ecf-140b87a26aed/2f62e8ca-f213-4399-9ecf-140b87a26aed.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/17-40-19.194_mkngff/2f62e8ca-f213-4399-9ecf-140b87a26aed.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/2f62e8ca-f213-4399-9ecf-140b87a26aed/2f62e8ca-f213-4399-9ecf-140b87a26aed.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/17-40-19.194_mkngff/2f62e8ca-f213-4399-9ecf-140b87a26aed.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/2f62e8ca-f213-4399-9ecf-140b87a26aed/2f62e8ca-f213-4399-9ecf-140b87a26aed.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/17-40-19.194_mkngff/2f62e8ca-f213-4399-9ecf-140b87a26aed.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/2f62e8ca-f213-4399-9ecf-140b87a26aed/2f62e8ca-f213-4399-9ecf-140b87a26aed.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/17-40-19.194_mkngff/2f62e8ca-f213-4399-9ecf-140b87a26aed.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/2f62e8ca-f213-4399-9ecf-140b87a26aed/2f62e8ca-f213-4399-9ecf-140b87a26aed.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/17-40-19.194_mkngff/2f62e8ca-f213-4399-9ecf-140b87a26aed.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/2f62e8ca-f213-4399-9ecf-140b87a26aed/2f62e8ca-f213-4399-9ecf-140b87a26aed.zarr/3/.zarray']
      ]::text[][]
    );
commit;

