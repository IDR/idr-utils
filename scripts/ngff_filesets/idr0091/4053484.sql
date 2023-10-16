UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/13-01-57.662_mkngff/4ae649ec-962c-4ba7-b60f-d649e4233284.zarr' where image in (select id from Image where fileset = 4053484);

begin;
    select mkngff_fileset(
      4053484,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/13-01-57.662_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/13-01-57.662_mkngff/4ae649ec-962c-4ba7-b60f-d649e4233284.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/4ae649ec-962c-4ba7-b60f-d649e4233284/4ae649ec-962c-4ba7-b60f-d649e4233284.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/13-01-57.662_mkngff/4ae649ec-962c-4ba7-b60f-d649e4233284.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/4ae649ec-962c-4ba7-b60f-d649e4233284/4ae649ec-962c-4ba7-b60f-d649e4233284.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/13-01-57.662_mkngff/4ae649ec-962c-4ba7-b60f-d649e4233284.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/4ae649ec-962c-4ba7-b60f-d649e4233284/4ae649ec-962c-4ba7-b60f-d649e4233284.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/13-01-57.662_mkngff/4ae649ec-962c-4ba7-b60f-d649e4233284.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/4ae649ec-962c-4ba7-b60f-d649e4233284/4ae649ec-962c-4ba7-b60f-d649e4233284.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/13-01-57.662_mkngff/4ae649ec-962c-4ba7-b60f-d649e4233284.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/4ae649ec-962c-4ba7-b60f-d649e4233284/4ae649ec-962c-4ba7-b60f-d649e4233284.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2020-10/03/13-01-57.662_mkngff/4ae649ec-962c-4ba7-b60f-d649e4233284.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/4ae649ec-962c-4ba7-b60f-d649e4233284/4ae649ec-962c-4ba7-b60f-d649e4233284.zarr/3/.zarray']
      ]::text[][]
    );
commit;

