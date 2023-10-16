UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2018-11/26/10-44-37.527_mkngff/b2633930-86b0-489e-a845-d2a7afe6ff15.zarr/OME' where image in (select id from Image where fileset = 604309);

begin;
    select mkngff_fileset(
      604309,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-18/2018-11/26/10-44-37.527_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2018-11/26/10-44-37.527_mkngff/b2633930-86b0-489e-a845-d2a7afe6ff15.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/b2633930-86b0-489e-a845-d2a7afe6ff15/b2633930-86b0-489e-a845-d2a7afe6ff15.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2018-11/26/10-44-37.527_mkngff/b2633930-86b0-489e-a845-d2a7afe6ff15.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/b2633930-86b0-489e-a845-d2a7afe6ff15/b2633930-86b0-489e-a845-d2a7afe6ff15.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2018-11/26/10-44-37.527_mkngff/b2633930-86b0-489e-a845-d2a7afe6ff15.zarr/0/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/b2633930-86b0-489e-a845-d2a7afe6ff15/b2633930-86b0-489e-a845-d2a7afe6ff15.zarr/0/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2018-11/26/10-44-37.527_mkngff/b2633930-86b0-489e-a845-d2a7afe6ff15.zarr/0/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/b2633930-86b0-489e-a845-d2a7afe6ff15/b2633930-86b0-489e-a845-d2a7afe6ff15.zarr/0/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2018-11/26/10-44-37.527_mkngff/b2633930-86b0-489e-a845-d2a7afe6ff15.zarr/0/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/b2633930-86b0-489e-a845-d2a7afe6ff15/b2633930-86b0-489e-a845-d2a7afe6ff15.zarr/0/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2018-11/26/10-44-37.527_mkngff/b2633930-86b0-489e-a845-d2a7afe6ff15.zarr/0/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/b2633930-86b0-489e-a845-d2a7afe6ff15/b2633930-86b0-489e-a845-d2a7afe6ff15.zarr/0/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2018-11/26/10-44-37.527_mkngff/b2633930-86b0-489e-a845-d2a7afe6ff15.zarr/OME/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/b2633930-86b0-489e-a845-d2a7afe6ff15/b2633930-86b0-489e-a845-d2a7afe6ff15.zarr/OME/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2018-11/26/10-44-37.527_mkngff/b2633930-86b0-489e-a845-d2a7afe6ff15.zarr/OME/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/b2633930-86b0-489e-a845-d2a7afe6ff15/b2633930-86b0-489e-a845-d2a7afe6ff15.zarr/OME/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-18/2018-11/26/10-44-37.527_mkngff/b2633930-86b0-489e-a845-d2a7afe6ff15.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/b2633930-86b0-489e-a845-d2a7afe6ff15/b2633930-86b0-489e-a845-d2a7afe6ff15.zarr/OME/METADATA.ome.xml']
      ]::text[][]
    );
commit;

