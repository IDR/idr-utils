UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2018-11/26/10-40-42.186_mkngff/e12a8e2a-4fce-4579-a78b-b0c4597c3ada.zarr/OME' where image in (select id from Image where fileset = 604307);

begin;
    select mkngff_fileset(
      604307,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-11/2018-11/26/10-40-42.186_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2018-11/26/10-40-42.186_mkngff/e12a8e2a-4fce-4579-a78b-b0c4597c3ada.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/e12a8e2a-4fce-4579-a78b-b0c4597c3ada/e12a8e2a-4fce-4579-a78b-b0c4597c3ada.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2018-11/26/10-40-42.186_mkngff/e12a8e2a-4fce-4579-a78b-b0c4597c3ada.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/e12a8e2a-4fce-4579-a78b-b0c4597c3ada/e12a8e2a-4fce-4579-a78b-b0c4597c3ada.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2018-11/26/10-40-42.186_mkngff/e12a8e2a-4fce-4579-a78b-b0c4597c3ada.zarr/0/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/e12a8e2a-4fce-4579-a78b-b0c4597c3ada/e12a8e2a-4fce-4579-a78b-b0c4597c3ada.zarr/0/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2018-11/26/10-40-42.186_mkngff/e12a8e2a-4fce-4579-a78b-b0c4597c3ada.zarr/0/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/e12a8e2a-4fce-4579-a78b-b0c4597c3ada/e12a8e2a-4fce-4579-a78b-b0c4597c3ada.zarr/0/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2018-11/26/10-40-42.186_mkngff/e12a8e2a-4fce-4579-a78b-b0c4597c3ada.zarr/0/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/e12a8e2a-4fce-4579-a78b-b0c4597c3ada/e12a8e2a-4fce-4579-a78b-b0c4597c3ada.zarr/0/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2018-11/26/10-40-42.186_mkngff/e12a8e2a-4fce-4579-a78b-b0c4597c3ada.zarr/0/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/e12a8e2a-4fce-4579-a78b-b0c4597c3ada/e12a8e2a-4fce-4579-a78b-b0c4597c3ada.zarr/0/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2018-11/26/10-40-42.186_mkngff/e12a8e2a-4fce-4579-a78b-b0c4597c3ada.zarr/OME/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/e12a8e2a-4fce-4579-a78b-b0c4597c3ada/e12a8e2a-4fce-4579-a78b-b0c4597c3ada.zarr/OME/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2018-11/26/10-40-42.186_mkngff/e12a8e2a-4fce-4579-a78b-b0c4597c3ada.zarr/OME/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/e12a8e2a-4fce-4579-a78b-b0c4597c3ada/e12a8e2a-4fce-4579-a78b-b0c4597c3ada.zarr/OME/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-11/2018-11/26/10-40-42.186_mkngff/e12a8e2a-4fce-4579-a78b-b0c4597c3ada.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/e12a8e2a-4fce-4579-a78b-b0c4597c3ada/e12a8e2a-4fce-4579-a78b-b0c4597c3ada.zarr/OME/METADATA.ome.xml']
      ]::text[][]
    );
commit;

