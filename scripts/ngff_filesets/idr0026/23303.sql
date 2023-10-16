UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/12/19-06-50.711_mkngff/a17342dc-6e78-4f93-a1c8-2cfeadc230bc.zarr/OME' where image in (select id from Image where fileset = 23303);

begin;
    select mkngff_fileset(
      23303,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/12/19-06-50.711_mkngff/',
      array[
          ['demo_2/2017-04/12/19-06-50.711_mkngff/a17342dc-6e78-4f93-a1c8-2cfeadc230bc.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/a17342dc-6e78-4f93-a1c8-2cfeadc230bc/a17342dc-6e78-4f93-a1c8-2cfeadc230bc.zarr/.zattrs'],
          ['demo_2/2017-04/12/19-06-50.711_mkngff/a17342dc-6e78-4f93-a1c8-2cfeadc230bc.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/a17342dc-6e78-4f93-a1c8-2cfeadc230bc/a17342dc-6e78-4f93-a1c8-2cfeadc230bc.zarr/.zgroup'],
          ['demo_2/2017-04/12/19-06-50.711_mkngff/a17342dc-6e78-4f93-a1c8-2cfeadc230bc.zarr/0/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/a17342dc-6e78-4f93-a1c8-2cfeadc230bc/a17342dc-6e78-4f93-a1c8-2cfeadc230bc.zarr/0/.zattrs'],
          ['demo_2/2017-04/12/19-06-50.711_mkngff/a17342dc-6e78-4f93-a1c8-2cfeadc230bc.zarr/0/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/a17342dc-6e78-4f93-a1c8-2cfeadc230bc/a17342dc-6e78-4f93-a1c8-2cfeadc230bc.zarr/0/.zgroup'],
          ['demo_2/2017-04/12/19-06-50.711_mkngff/a17342dc-6e78-4f93-a1c8-2cfeadc230bc.zarr/0/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/a17342dc-6e78-4f93-a1c8-2cfeadc230bc/a17342dc-6e78-4f93-a1c8-2cfeadc230bc.zarr/0/0/.zarray'],
          ['demo_2/2017-04/12/19-06-50.711_mkngff/a17342dc-6e78-4f93-a1c8-2cfeadc230bc.zarr/0/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/a17342dc-6e78-4f93-a1c8-2cfeadc230bc/a17342dc-6e78-4f93-a1c8-2cfeadc230bc.zarr/0/1/.zarray'],
          ['demo_2/2017-04/12/19-06-50.711_mkngff/a17342dc-6e78-4f93-a1c8-2cfeadc230bc.zarr/OME/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/a17342dc-6e78-4f93-a1c8-2cfeadc230bc/a17342dc-6e78-4f93-a1c8-2cfeadc230bc.zarr/OME/.zattrs'],
          ['demo_2/2017-04/12/19-06-50.711_mkngff/a17342dc-6e78-4f93-a1c8-2cfeadc230bc.zarr/OME/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/a17342dc-6e78-4f93-a1c8-2cfeadc230bc/a17342dc-6e78-4f93-a1c8-2cfeadc230bc.zarr/OME/.zgroup'],
          ['demo_2/2017-04/12/19-06-50.711_mkngff/a17342dc-6e78-4f93-a1c8-2cfeadc230bc.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/a17342dc-6e78-4f93-a1c8-2cfeadc230bc/a17342dc-6e78-4f93-a1c8-2cfeadc230bc.zarr/OME/METADATA.ome.xml']
      ]::text[][]
    );
commit;

