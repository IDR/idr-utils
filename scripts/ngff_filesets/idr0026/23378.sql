UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/13/03-20-49.594_mkngff/edce5177-2a3f-4023-bf4a-494973bfe6ec.zarr/OME' where image in (select id from Image where fileset = 23378);

begin;
    select mkngff_fileset(
      23378,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/13/03-20-49.594_mkngff/',
      array[
          ['demo_2/2017-04/13/03-20-49.594_mkngff/edce5177-2a3f-4023-bf4a-494973bfe6ec.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/edce5177-2a3f-4023-bf4a-494973bfe6ec/edce5177-2a3f-4023-bf4a-494973bfe6ec.zarr/.zattrs'],
          ['demo_2/2017-04/13/03-20-49.594_mkngff/edce5177-2a3f-4023-bf4a-494973bfe6ec.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/edce5177-2a3f-4023-bf4a-494973bfe6ec/edce5177-2a3f-4023-bf4a-494973bfe6ec.zarr/.zgroup'],
          ['demo_2/2017-04/13/03-20-49.594_mkngff/edce5177-2a3f-4023-bf4a-494973bfe6ec.zarr/0/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/edce5177-2a3f-4023-bf4a-494973bfe6ec/edce5177-2a3f-4023-bf4a-494973bfe6ec.zarr/0/.zattrs'],
          ['demo_2/2017-04/13/03-20-49.594_mkngff/edce5177-2a3f-4023-bf4a-494973bfe6ec.zarr/0/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/edce5177-2a3f-4023-bf4a-494973bfe6ec/edce5177-2a3f-4023-bf4a-494973bfe6ec.zarr/0/.zgroup'],
          ['demo_2/2017-04/13/03-20-49.594_mkngff/edce5177-2a3f-4023-bf4a-494973bfe6ec.zarr/0/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/edce5177-2a3f-4023-bf4a-494973bfe6ec/edce5177-2a3f-4023-bf4a-494973bfe6ec.zarr/0/0/.zarray'],
          ['demo_2/2017-04/13/03-20-49.594_mkngff/edce5177-2a3f-4023-bf4a-494973bfe6ec.zarr/0/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/edce5177-2a3f-4023-bf4a-494973bfe6ec/edce5177-2a3f-4023-bf4a-494973bfe6ec.zarr/0/1/.zarray'],
          ['demo_2/2017-04/13/03-20-49.594_mkngff/edce5177-2a3f-4023-bf4a-494973bfe6ec.zarr/OME/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/edce5177-2a3f-4023-bf4a-494973bfe6ec/edce5177-2a3f-4023-bf4a-494973bfe6ec.zarr/OME/.zattrs'],
          ['demo_2/2017-04/13/03-20-49.594_mkngff/edce5177-2a3f-4023-bf4a-494973bfe6ec.zarr/OME/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/edce5177-2a3f-4023-bf4a-494973bfe6ec/edce5177-2a3f-4023-bf4a-494973bfe6ec.zarr/OME/.zgroup'],
          ['demo_2/2017-04/13/03-20-49.594_mkngff/edce5177-2a3f-4023-bf4a-494973bfe6ec.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/edce5177-2a3f-4023-bf4a-494973bfe6ec/edce5177-2a3f-4023-bf4a-494973bfe6ec.zarr/OME/METADATA.ome.xml']
      ]::text[][]
    );
commit;

