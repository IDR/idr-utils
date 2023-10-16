UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/13/01-38-23.065_mkngff/774e522a-c71d-4432-838a-7c37d2145464.zarr/OME' where image in (select id from Image where fileset = 23365);

begin;
    select mkngff_fileset(
      23365,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/13/01-38-23.065_mkngff/',
      array[
          ['demo_2/2017-04/13/01-38-23.065_mkngff/774e522a-c71d-4432-838a-7c37d2145464.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/774e522a-c71d-4432-838a-7c37d2145464/774e522a-c71d-4432-838a-7c37d2145464.zarr/.zattrs'],
          ['demo_2/2017-04/13/01-38-23.065_mkngff/774e522a-c71d-4432-838a-7c37d2145464.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/774e522a-c71d-4432-838a-7c37d2145464/774e522a-c71d-4432-838a-7c37d2145464.zarr/.zgroup'],
          ['demo_2/2017-04/13/01-38-23.065_mkngff/774e522a-c71d-4432-838a-7c37d2145464.zarr/0/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/774e522a-c71d-4432-838a-7c37d2145464/774e522a-c71d-4432-838a-7c37d2145464.zarr/0/.zattrs'],
          ['demo_2/2017-04/13/01-38-23.065_mkngff/774e522a-c71d-4432-838a-7c37d2145464.zarr/0/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/774e522a-c71d-4432-838a-7c37d2145464/774e522a-c71d-4432-838a-7c37d2145464.zarr/0/.zgroup'],
          ['demo_2/2017-04/13/01-38-23.065_mkngff/774e522a-c71d-4432-838a-7c37d2145464.zarr/0/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/774e522a-c71d-4432-838a-7c37d2145464/774e522a-c71d-4432-838a-7c37d2145464.zarr/0/0/.zarray'],
          ['demo_2/2017-04/13/01-38-23.065_mkngff/774e522a-c71d-4432-838a-7c37d2145464.zarr/0/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/774e522a-c71d-4432-838a-7c37d2145464/774e522a-c71d-4432-838a-7c37d2145464.zarr/0/1/.zarray'],
          ['demo_2/2017-04/13/01-38-23.065_mkngff/774e522a-c71d-4432-838a-7c37d2145464.zarr/OME/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/774e522a-c71d-4432-838a-7c37d2145464/774e522a-c71d-4432-838a-7c37d2145464.zarr/OME/.zattrs'],
          ['demo_2/2017-04/13/01-38-23.065_mkngff/774e522a-c71d-4432-838a-7c37d2145464.zarr/OME/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/774e522a-c71d-4432-838a-7c37d2145464/774e522a-c71d-4432-838a-7c37d2145464.zarr/OME/.zgroup'],
          ['demo_2/2017-04/13/01-38-23.065_mkngff/774e522a-c71d-4432-838a-7c37d2145464.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/774e522a-c71d-4432-838a-7c37d2145464/774e522a-c71d-4432-838a-7c37d2145464.zarr/OME/METADATA.ome.xml']
      ]::text[][]
    );
commit;

