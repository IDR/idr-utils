UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/12/15-04-28.315_mkngff/fa60184b-d336-41ee-b413-871505a8ee1b.zarr/OME' where image in (select id from Image where fileset = 23263);

begin;
    select mkngff_fileset(
      23263,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/12/15-04-28.315_mkngff/',
      array[
          ['demo_2/2017-04/12/15-04-28.315_mkngff/fa60184b-d336-41ee-b413-871505a8ee1b.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/fa60184b-d336-41ee-b413-871505a8ee1b/fa60184b-d336-41ee-b413-871505a8ee1b.zarr/.zattrs'],
          ['demo_2/2017-04/12/15-04-28.315_mkngff/fa60184b-d336-41ee-b413-871505a8ee1b.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/fa60184b-d336-41ee-b413-871505a8ee1b/fa60184b-d336-41ee-b413-871505a8ee1b.zarr/.zgroup'],
          ['demo_2/2017-04/12/15-04-28.315_mkngff/fa60184b-d336-41ee-b413-871505a8ee1b.zarr/0/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/fa60184b-d336-41ee-b413-871505a8ee1b/fa60184b-d336-41ee-b413-871505a8ee1b.zarr/0/.zattrs'],
          ['demo_2/2017-04/12/15-04-28.315_mkngff/fa60184b-d336-41ee-b413-871505a8ee1b.zarr/0/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/fa60184b-d336-41ee-b413-871505a8ee1b/fa60184b-d336-41ee-b413-871505a8ee1b.zarr/0/.zgroup'],
          ['demo_2/2017-04/12/15-04-28.315_mkngff/fa60184b-d336-41ee-b413-871505a8ee1b.zarr/0/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/fa60184b-d336-41ee-b413-871505a8ee1b/fa60184b-d336-41ee-b413-871505a8ee1b.zarr/0/0/.zarray'],
          ['demo_2/2017-04/12/15-04-28.315_mkngff/fa60184b-d336-41ee-b413-871505a8ee1b.zarr/0/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/fa60184b-d336-41ee-b413-871505a8ee1b/fa60184b-d336-41ee-b413-871505a8ee1b.zarr/0/1/.zarray'],
          ['demo_2/2017-04/12/15-04-28.315_mkngff/fa60184b-d336-41ee-b413-871505a8ee1b.zarr/OME/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/fa60184b-d336-41ee-b413-871505a8ee1b/fa60184b-d336-41ee-b413-871505a8ee1b.zarr/OME/.zattrs'],
          ['demo_2/2017-04/12/15-04-28.315_mkngff/fa60184b-d336-41ee-b413-871505a8ee1b.zarr/OME/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/fa60184b-d336-41ee-b413-871505a8ee1b/fa60184b-d336-41ee-b413-871505a8ee1b.zarr/OME/.zgroup'],
          ['demo_2/2017-04/12/15-04-28.315_mkngff/fa60184b-d336-41ee-b413-871505a8ee1b.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/fa60184b-d336-41ee-b413-871505a8ee1b/fa60184b-d336-41ee-b413-871505a8ee1b.zarr/OME/METADATA.ome.xml']
      ]::text[][]
    );
commit;

