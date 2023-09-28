UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/12-06-21.783_mkngff/c51ef65d-d0a3-474e-9b69-c83737e83d06.zarr' where image in (select id from Image where fileset = 4053467);

begin;
    select mkngff_fileset(
      4053467,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/12-06-21.783_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/12-06-21.783_mkngff/c51ef65d-d0a3-474e-9b69-c83737e83d06.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/12-06-21.783_mkngff/c51ef65d-d0a3-474e-9b69-c83737e83d06.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/12-06-21.783_mkngff/c51ef65d-d0a3-474e-9b69-c83737e83d06.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/12-06-21.783_mkngff/c51ef65d-d0a3-474e-9b69-c83737e83d06.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/12-06-21.783_mkngff/c51ef65d-d0a3-474e-9b69-c83737e83d06.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/12-06-21.783_mkngff/c51ef65d-d0a3-474e-9b69-c83737e83d06.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

