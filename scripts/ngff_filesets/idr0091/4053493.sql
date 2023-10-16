UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/13-52-51.574_mkngff/38b62c72-40cd-4f9a-8bef-dd8975924269.zarr' where image in (select id from Image where fileset = 4053493);

begin;
    select mkngff_fileset(
      4053493,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/13-52-51.574_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/13-52-51.574_mkngff/38b62c72-40cd-4f9a-8bef-dd8975924269.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/38b62c72-40cd-4f9a-8bef-dd8975924269/38b62c72-40cd-4f9a-8bef-dd8975924269.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/13-52-51.574_mkngff/38b62c72-40cd-4f9a-8bef-dd8975924269.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/38b62c72-40cd-4f9a-8bef-dd8975924269/38b62c72-40cd-4f9a-8bef-dd8975924269.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/13-52-51.574_mkngff/38b62c72-40cd-4f9a-8bef-dd8975924269.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/38b62c72-40cd-4f9a-8bef-dd8975924269/38b62c72-40cd-4f9a-8bef-dd8975924269.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/13-52-51.574_mkngff/38b62c72-40cd-4f9a-8bef-dd8975924269.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/38b62c72-40cd-4f9a-8bef-dd8975924269/38b62c72-40cd-4f9a-8bef-dd8975924269.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/13-52-51.574_mkngff/38b62c72-40cd-4f9a-8bef-dd8975924269.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/38b62c72-40cd-4f9a-8bef-dd8975924269/38b62c72-40cd-4f9a-8bef-dd8975924269.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/13-52-51.574_mkngff/38b62c72-40cd-4f9a-8bef-dd8975924269.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/38b62c72-40cd-4f9a-8bef-dd8975924269/38b62c72-40cd-4f9a-8bef-dd8975924269.zarr/3/.zarray']
      ]::text[][]
    );
commit;

