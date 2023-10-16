UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/12/20-50-22.755_mkngff/e6aadc7b-207f-45d9-b001-a2f9de34d5bc.zarr/OME' where image in (select id from Image where fileset = 23313);

begin;
    select mkngff_fileset(
      23313,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/12/20-50-22.755_mkngff/',
      array[
          ['demo_2/2017-04/12/20-50-22.755_mkngff/e6aadc7b-207f-45d9-b001-a2f9de34d5bc.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/e6aadc7b-207f-45d9-b001-a2f9de34d5bc/e6aadc7b-207f-45d9-b001-a2f9de34d5bc.zarr/.zattrs'],
          ['demo_2/2017-04/12/20-50-22.755_mkngff/e6aadc7b-207f-45d9-b001-a2f9de34d5bc.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/e6aadc7b-207f-45d9-b001-a2f9de34d5bc/e6aadc7b-207f-45d9-b001-a2f9de34d5bc.zarr/.zgroup'],
          ['demo_2/2017-04/12/20-50-22.755_mkngff/e6aadc7b-207f-45d9-b001-a2f9de34d5bc.zarr/0/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/e6aadc7b-207f-45d9-b001-a2f9de34d5bc/e6aadc7b-207f-45d9-b001-a2f9de34d5bc.zarr/0/.zattrs'],
          ['demo_2/2017-04/12/20-50-22.755_mkngff/e6aadc7b-207f-45d9-b001-a2f9de34d5bc.zarr/0/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/e6aadc7b-207f-45d9-b001-a2f9de34d5bc/e6aadc7b-207f-45d9-b001-a2f9de34d5bc.zarr/0/.zgroup'],
          ['demo_2/2017-04/12/20-50-22.755_mkngff/e6aadc7b-207f-45d9-b001-a2f9de34d5bc.zarr/0/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/e6aadc7b-207f-45d9-b001-a2f9de34d5bc/e6aadc7b-207f-45d9-b001-a2f9de34d5bc.zarr/0/0/.zarray'],
          ['demo_2/2017-04/12/20-50-22.755_mkngff/e6aadc7b-207f-45d9-b001-a2f9de34d5bc.zarr/0/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/e6aadc7b-207f-45d9-b001-a2f9de34d5bc/e6aadc7b-207f-45d9-b001-a2f9de34d5bc.zarr/0/1/.zarray'],
          ['demo_2/2017-04/12/20-50-22.755_mkngff/e6aadc7b-207f-45d9-b001-a2f9de34d5bc.zarr/OME/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/e6aadc7b-207f-45d9-b001-a2f9de34d5bc/e6aadc7b-207f-45d9-b001-a2f9de34d5bc.zarr/OME/.zattrs'],
          ['demo_2/2017-04/12/20-50-22.755_mkngff/e6aadc7b-207f-45d9-b001-a2f9de34d5bc.zarr/OME/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/e6aadc7b-207f-45d9-b001-a2f9de34d5bc/e6aadc7b-207f-45d9-b001-a2f9de34d5bc.zarr/OME/.zgroup'],
          ['demo_2/2017-04/12/20-50-22.755_mkngff/e6aadc7b-207f-45d9-b001-a2f9de34d5bc.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/e6aadc7b-207f-45d9-b001-a2f9de34d5bc/e6aadc7b-207f-45d9-b001-a2f9de34d5bc.zarr/OME/METADATA.ome.xml']
      ]::text[][]
    );
commit;

