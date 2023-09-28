UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/17-40-19.194_mkngff/2f62e8ca-f213-4399-9ecf-140b87a26aed.zarr' where image in (select id from Image where fileset = 4053836);

begin;
    select mkngff_fileset(
      4053836,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/17-40-19.194_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/17-40-19.194_mkngff/2f62e8ca-f213-4399-9ecf-140b87a26aed.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/17-40-19.194_mkngff/2f62e8ca-f213-4399-9ecf-140b87a26aed.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/17-40-19.194_mkngff/2f62e8ca-f213-4399-9ecf-140b87a26aed.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/17-40-19.194_mkngff/2f62e8ca-f213-4399-9ecf-140b87a26aed.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/17-40-19.194_mkngff/2f62e8ca-f213-4399-9ecf-140b87a26aed.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-22/2020-10/03/17-40-19.194_mkngff/2f62e8ca-f213-4399-9ecf-140b87a26aed.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

