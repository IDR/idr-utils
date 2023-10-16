UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-14/2018-11/26/10-39-49.639_mkngff/51afff7c-eed4-44b4-95c7-1437d8807b97.zarr/OME' where image in (select id from Image where fileset = 604306);

begin;
    select mkngff_fileset(
      604306,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-14/2018-11/26/10-39-49.639_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2018-11/26/10-39-49.639_mkngff/51afff7c-eed4-44b4-95c7-1437d8807b97.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/51afff7c-eed4-44b4-95c7-1437d8807b97/51afff7c-eed4-44b4-95c7-1437d8807b97.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2018-11/26/10-39-49.639_mkngff/51afff7c-eed4-44b4-95c7-1437d8807b97.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/51afff7c-eed4-44b4-95c7-1437d8807b97/51afff7c-eed4-44b4-95c7-1437d8807b97.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2018-11/26/10-39-49.639_mkngff/51afff7c-eed4-44b4-95c7-1437d8807b97.zarr/0/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/51afff7c-eed4-44b4-95c7-1437d8807b97/51afff7c-eed4-44b4-95c7-1437d8807b97.zarr/0/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2018-11/26/10-39-49.639_mkngff/51afff7c-eed4-44b4-95c7-1437d8807b97.zarr/0/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/51afff7c-eed4-44b4-95c7-1437d8807b97/51afff7c-eed4-44b4-95c7-1437d8807b97.zarr/0/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2018-11/26/10-39-49.639_mkngff/51afff7c-eed4-44b4-95c7-1437d8807b97.zarr/0/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/51afff7c-eed4-44b4-95c7-1437d8807b97/51afff7c-eed4-44b4-95c7-1437d8807b97.zarr/0/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2018-11/26/10-39-49.639_mkngff/51afff7c-eed4-44b4-95c7-1437d8807b97.zarr/0/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/51afff7c-eed4-44b4-95c7-1437d8807b97/51afff7c-eed4-44b4-95c7-1437d8807b97.zarr/0/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2018-11/26/10-39-49.639_mkngff/51afff7c-eed4-44b4-95c7-1437d8807b97.zarr/0/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/51afff7c-eed4-44b4-95c7-1437d8807b97/51afff7c-eed4-44b4-95c7-1437d8807b97.zarr/0/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2018-11/26/10-39-49.639_mkngff/51afff7c-eed4-44b4-95c7-1437d8807b97.zarr/OME/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/51afff7c-eed4-44b4-95c7-1437d8807b97/51afff7c-eed4-44b4-95c7-1437d8807b97.zarr/OME/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2018-11/26/10-39-49.639_mkngff/51afff7c-eed4-44b4-95c7-1437d8807b97.zarr/OME/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/51afff7c-eed4-44b4-95c7-1437d8807b97/51afff7c-eed4-44b4-95c7-1437d8807b97.zarr/OME/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-14/2018-11/26/10-39-49.639_mkngff/51afff7c-eed4-44b4-95c7-1437d8807b97.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/51afff7c-eed4-44b4-95c7-1437d8807b97/51afff7c-eed4-44b4-95c7-1437d8807b97.zarr/OME/METADATA.ome.xml']
      ]::text[][]
    );
commit;

