UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/12/20-36-51.213_mkngff/2d3c1076-afd6-4cb9-81bf-f22588bf81e1.zarr/OME' where image in (select id from Image where fileset = 23312);

begin;
    select mkngff_fileset(
      23312,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/12/20-36-51.213_mkngff/',
      array[
          ['demo_2/2017-04/12/20-36-51.213_mkngff/2d3c1076-afd6-4cb9-81bf-f22588bf81e1.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/2d3c1076-afd6-4cb9-81bf-f22588bf81e1/2d3c1076-afd6-4cb9-81bf-f22588bf81e1.zarr/.zattrs'],
          ['demo_2/2017-04/12/20-36-51.213_mkngff/2d3c1076-afd6-4cb9-81bf-f22588bf81e1.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/2d3c1076-afd6-4cb9-81bf-f22588bf81e1/2d3c1076-afd6-4cb9-81bf-f22588bf81e1.zarr/.zgroup'],
          ['demo_2/2017-04/12/20-36-51.213_mkngff/2d3c1076-afd6-4cb9-81bf-f22588bf81e1.zarr/0/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/2d3c1076-afd6-4cb9-81bf-f22588bf81e1/2d3c1076-afd6-4cb9-81bf-f22588bf81e1.zarr/0/.zattrs'],
          ['demo_2/2017-04/12/20-36-51.213_mkngff/2d3c1076-afd6-4cb9-81bf-f22588bf81e1.zarr/0/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/2d3c1076-afd6-4cb9-81bf-f22588bf81e1/2d3c1076-afd6-4cb9-81bf-f22588bf81e1.zarr/0/.zgroup'],
          ['demo_2/2017-04/12/20-36-51.213_mkngff/2d3c1076-afd6-4cb9-81bf-f22588bf81e1.zarr/0/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/2d3c1076-afd6-4cb9-81bf-f22588bf81e1/2d3c1076-afd6-4cb9-81bf-f22588bf81e1.zarr/0/0/.zarray'],
          ['demo_2/2017-04/12/20-36-51.213_mkngff/2d3c1076-afd6-4cb9-81bf-f22588bf81e1.zarr/0/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/2d3c1076-afd6-4cb9-81bf-f22588bf81e1/2d3c1076-afd6-4cb9-81bf-f22588bf81e1.zarr/0/1/.zarray'],
          ['demo_2/2017-04/12/20-36-51.213_mkngff/2d3c1076-afd6-4cb9-81bf-f22588bf81e1.zarr/OME/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/2d3c1076-afd6-4cb9-81bf-f22588bf81e1/2d3c1076-afd6-4cb9-81bf-f22588bf81e1.zarr/OME/.zattrs'],
          ['demo_2/2017-04/12/20-36-51.213_mkngff/2d3c1076-afd6-4cb9-81bf-f22588bf81e1.zarr/OME/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/2d3c1076-afd6-4cb9-81bf-f22588bf81e1/2d3c1076-afd6-4cb9-81bf-f22588bf81e1.zarr/OME/.zgroup'],
          ['demo_2/2017-04/12/20-36-51.213_mkngff/2d3c1076-afd6-4cb9-81bf-f22588bf81e1.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/2d3c1076-afd6-4cb9-81bf-f22588bf81e1/2d3c1076-afd6-4cb9-81bf-f22588bf81e1.zarr/OME/METADATA.ome.xml']
      ]::text[][]
    );
commit;

