UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/13/11-10-06.199_mkngff/9640c08d-8cba-4e32-a32d-f593b230fadf.zarr/OME' where image in (select id from Image where fileset = 23445);

begin;
    select mkngff_fileset(
      23445,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/13/11-10-06.199_mkngff/',
      array[
          ['demo_2/2017-04/13/11-10-06.199_mkngff/9640c08d-8cba-4e32-a32d-f593b230fadf.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/9640c08d-8cba-4e32-a32d-f593b230fadf/9640c08d-8cba-4e32-a32d-f593b230fadf.zarr/.zattrs'],
          ['demo_2/2017-04/13/11-10-06.199_mkngff/9640c08d-8cba-4e32-a32d-f593b230fadf.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/9640c08d-8cba-4e32-a32d-f593b230fadf/9640c08d-8cba-4e32-a32d-f593b230fadf.zarr/.zgroup'],
          ['demo_2/2017-04/13/11-10-06.199_mkngff/9640c08d-8cba-4e32-a32d-f593b230fadf.zarr/0/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/9640c08d-8cba-4e32-a32d-f593b230fadf/9640c08d-8cba-4e32-a32d-f593b230fadf.zarr/0/.zattrs'],
          ['demo_2/2017-04/13/11-10-06.199_mkngff/9640c08d-8cba-4e32-a32d-f593b230fadf.zarr/0/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/9640c08d-8cba-4e32-a32d-f593b230fadf/9640c08d-8cba-4e32-a32d-f593b230fadf.zarr/0/.zgroup'],
          ['demo_2/2017-04/13/11-10-06.199_mkngff/9640c08d-8cba-4e32-a32d-f593b230fadf.zarr/0/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/9640c08d-8cba-4e32-a32d-f593b230fadf/9640c08d-8cba-4e32-a32d-f593b230fadf.zarr/0/0/.zarray'],
          ['demo_2/2017-04/13/11-10-06.199_mkngff/9640c08d-8cba-4e32-a32d-f593b230fadf.zarr/0/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/9640c08d-8cba-4e32-a32d-f593b230fadf/9640c08d-8cba-4e32-a32d-f593b230fadf.zarr/0/1/.zarray'],
          ['demo_2/2017-04/13/11-10-06.199_mkngff/9640c08d-8cba-4e32-a32d-f593b230fadf.zarr/OME/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/9640c08d-8cba-4e32-a32d-f593b230fadf/9640c08d-8cba-4e32-a32d-f593b230fadf.zarr/OME/.zattrs'],
          ['demo_2/2017-04/13/11-10-06.199_mkngff/9640c08d-8cba-4e32-a32d-f593b230fadf.zarr/OME/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/9640c08d-8cba-4e32-a32d-f593b230fadf/9640c08d-8cba-4e32-a32d-f593b230fadf.zarr/OME/.zgroup'],
          ['demo_2/2017-04/13/11-10-06.199_mkngff/9640c08d-8cba-4e32-a32d-f593b230fadf.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/9640c08d-8cba-4e32-a32d-f593b230fadf/9640c08d-8cba-4e32-a32d-f593b230fadf.zarr/OME/METADATA.ome.xml']
      ]::text[][]
    );
commit;

