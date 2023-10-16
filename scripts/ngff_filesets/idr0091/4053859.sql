UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/18-34-48.347_mkngff/c643264b-b546-4c11-b92f-04e4c4c40959.zarr' where image in (select id from Image where fileset = 4053859);

begin;
    select mkngff_fileset(
      4053859,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/18-34-48.347_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/18-34-48.347_mkngff/c643264b-b546-4c11-b92f-04e4c4c40959.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/c643264b-b546-4c11-b92f-04e4c4c40959/c643264b-b546-4c11-b92f-04e4c4c40959.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/18-34-48.347_mkngff/c643264b-b546-4c11-b92f-04e4c4c40959.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/c643264b-b546-4c11-b92f-04e4c4c40959/c643264b-b546-4c11-b92f-04e4c4c40959.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/18-34-48.347_mkngff/c643264b-b546-4c11-b92f-04e4c4c40959.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/c643264b-b546-4c11-b92f-04e4c4c40959/c643264b-b546-4c11-b92f-04e4c4c40959.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/18-34-48.347_mkngff/c643264b-b546-4c11-b92f-04e4c4c40959.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/c643264b-b546-4c11-b92f-04e4c4c40959/c643264b-b546-4c11-b92f-04e4c4c40959.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/18-34-48.347_mkngff/c643264b-b546-4c11-b92f-04e4c4c40959.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/c643264b-b546-4c11-b92f-04e4c4c40959/c643264b-b546-4c11-b92f-04e4c4c40959.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/18-34-48.347_mkngff/c643264b-b546-4c11-b92f-04e4c4c40959.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/c643264b-b546-4c11-b92f-04e4c4c40959/c643264b-b546-4c11-b92f-04e4c4c40959.zarr/3/.zarray']
      ]::text[][]
    );
commit;

