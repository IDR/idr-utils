UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/13/06-27-14.604_mkngff/40bf9618-98ab-485b-b4c4-020e4bd869cc.zarr/OME' where image in (select id from Image where fileset = 23409);

begin;
    select mkngff_fileset(
      23409,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/13/06-27-14.604_mkngff/',
      array[
          ['demo_2/2017-04/13/06-27-14.604_mkngff/40bf9618-98ab-485b-b4c4-020e4bd869cc.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/40bf9618-98ab-485b-b4c4-020e4bd869cc/40bf9618-98ab-485b-b4c4-020e4bd869cc.zarr/.zattrs'],
          ['demo_2/2017-04/13/06-27-14.604_mkngff/40bf9618-98ab-485b-b4c4-020e4bd869cc.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/40bf9618-98ab-485b-b4c4-020e4bd869cc/40bf9618-98ab-485b-b4c4-020e4bd869cc.zarr/.zgroup'],
          ['demo_2/2017-04/13/06-27-14.604_mkngff/40bf9618-98ab-485b-b4c4-020e4bd869cc.zarr/0/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/40bf9618-98ab-485b-b4c4-020e4bd869cc/40bf9618-98ab-485b-b4c4-020e4bd869cc.zarr/0/.zattrs'],
          ['demo_2/2017-04/13/06-27-14.604_mkngff/40bf9618-98ab-485b-b4c4-020e4bd869cc.zarr/0/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/40bf9618-98ab-485b-b4c4-020e4bd869cc/40bf9618-98ab-485b-b4c4-020e4bd869cc.zarr/0/.zgroup'],
          ['demo_2/2017-04/13/06-27-14.604_mkngff/40bf9618-98ab-485b-b4c4-020e4bd869cc.zarr/0/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/40bf9618-98ab-485b-b4c4-020e4bd869cc/40bf9618-98ab-485b-b4c4-020e4bd869cc.zarr/0/0/.zarray'],
          ['demo_2/2017-04/13/06-27-14.604_mkngff/40bf9618-98ab-485b-b4c4-020e4bd869cc.zarr/0/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/40bf9618-98ab-485b-b4c4-020e4bd869cc/40bf9618-98ab-485b-b4c4-020e4bd869cc.zarr/0/1/.zarray'],
          ['demo_2/2017-04/13/06-27-14.604_mkngff/40bf9618-98ab-485b-b4c4-020e4bd869cc.zarr/OME/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/40bf9618-98ab-485b-b4c4-020e4bd869cc/40bf9618-98ab-485b-b4c4-020e4bd869cc.zarr/OME/.zattrs'],
          ['demo_2/2017-04/13/06-27-14.604_mkngff/40bf9618-98ab-485b-b4c4-020e4bd869cc.zarr/OME/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/40bf9618-98ab-485b-b4c4-020e4bd869cc/40bf9618-98ab-485b-b4c4-020e4bd869cc.zarr/OME/.zgroup'],
          ['demo_2/2017-04/13/06-27-14.604_mkngff/40bf9618-98ab-485b-b4c4-020e4bd869cc.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/40bf9618-98ab-485b-b4c4-020e4bd869cc/40bf9618-98ab-485b-b4c4-020e4bd869cc.zarr/OME/METADATA.ome.xml']
      ]::text[][]
    );
commit;

