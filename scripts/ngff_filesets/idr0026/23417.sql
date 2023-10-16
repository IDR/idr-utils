UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/13/07-06-10.670_mkngff/dd0be90a-ff66-410c-86b8-63d3fb6faedb.zarr/OME' where image in (select id from Image where fileset = 23417);

begin;
    select mkngff_fileset(
      23417,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/13/07-06-10.670_mkngff/',
      array[
          ['demo_2/2017-04/13/07-06-10.670_mkngff/dd0be90a-ff66-410c-86b8-63d3fb6faedb.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/dd0be90a-ff66-410c-86b8-63d3fb6faedb/dd0be90a-ff66-410c-86b8-63d3fb6faedb.zarr/.zattrs'],
          ['demo_2/2017-04/13/07-06-10.670_mkngff/dd0be90a-ff66-410c-86b8-63d3fb6faedb.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/dd0be90a-ff66-410c-86b8-63d3fb6faedb/dd0be90a-ff66-410c-86b8-63d3fb6faedb.zarr/.zgroup'],
          ['demo_2/2017-04/13/07-06-10.670_mkngff/dd0be90a-ff66-410c-86b8-63d3fb6faedb.zarr/0/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/dd0be90a-ff66-410c-86b8-63d3fb6faedb/dd0be90a-ff66-410c-86b8-63d3fb6faedb.zarr/0/.zattrs'],
          ['demo_2/2017-04/13/07-06-10.670_mkngff/dd0be90a-ff66-410c-86b8-63d3fb6faedb.zarr/0/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/dd0be90a-ff66-410c-86b8-63d3fb6faedb/dd0be90a-ff66-410c-86b8-63d3fb6faedb.zarr/0/.zgroup'],
          ['demo_2/2017-04/13/07-06-10.670_mkngff/dd0be90a-ff66-410c-86b8-63d3fb6faedb.zarr/0/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/dd0be90a-ff66-410c-86b8-63d3fb6faedb/dd0be90a-ff66-410c-86b8-63d3fb6faedb.zarr/0/0/.zarray'],
          ['demo_2/2017-04/13/07-06-10.670_mkngff/dd0be90a-ff66-410c-86b8-63d3fb6faedb.zarr/0/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/dd0be90a-ff66-410c-86b8-63d3fb6faedb/dd0be90a-ff66-410c-86b8-63d3fb6faedb.zarr/0/1/.zarray'],
          ['demo_2/2017-04/13/07-06-10.670_mkngff/dd0be90a-ff66-410c-86b8-63d3fb6faedb.zarr/OME/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/dd0be90a-ff66-410c-86b8-63d3fb6faedb/dd0be90a-ff66-410c-86b8-63d3fb6faedb.zarr/OME/.zattrs'],
          ['demo_2/2017-04/13/07-06-10.670_mkngff/dd0be90a-ff66-410c-86b8-63d3fb6faedb.zarr/OME/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/dd0be90a-ff66-410c-86b8-63d3fb6faedb/dd0be90a-ff66-410c-86b8-63d3fb6faedb.zarr/OME/.zgroup'],
          ['demo_2/2017-04/13/07-06-10.670_mkngff/dd0be90a-ff66-410c-86b8-63d3fb6faedb.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/dd0be90a-ff66-410c-86b8-63d3fb6faedb/dd0be90a-ff66-410c-86b8-63d3fb6faedb.zarr/OME/METADATA.ome.xml']
      ]::text[][]
    );
commit;

