UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/12/19-15-12.146_mkngff/487f0bdd-a020-4cff-bfcb-887edd21c9ca.zarr/OME' where image in (select id from Image where fileset = 23304);

begin;
    select mkngff_fileset(
      23304,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/12/19-15-12.146_mkngff/',
      array[
          ['demo_2/2017-04/12/19-15-12.146_mkngff/487f0bdd-a020-4cff-bfcb-887edd21c9ca.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/487f0bdd-a020-4cff-bfcb-887edd21c9ca/487f0bdd-a020-4cff-bfcb-887edd21c9ca.zarr/.zattrs'],
          ['demo_2/2017-04/12/19-15-12.146_mkngff/487f0bdd-a020-4cff-bfcb-887edd21c9ca.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/487f0bdd-a020-4cff-bfcb-887edd21c9ca/487f0bdd-a020-4cff-bfcb-887edd21c9ca.zarr/.zgroup'],
          ['demo_2/2017-04/12/19-15-12.146_mkngff/487f0bdd-a020-4cff-bfcb-887edd21c9ca.zarr/0/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/487f0bdd-a020-4cff-bfcb-887edd21c9ca/487f0bdd-a020-4cff-bfcb-887edd21c9ca.zarr/0/.zattrs'],
          ['demo_2/2017-04/12/19-15-12.146_mkngff/487f0bdd-a020-4cff-bfcb-887edd21c9ca.zarr/0/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/487f0bdd-a020-4cff-bfcb-887edd21c9ca/487f0bdd-a020-4cff-bfcb-887edd21c9ca.zarr/0/.zgroup'],
          ['demo_2/2017-04/12/19-15-12.146_mkngff/487f0bdd-a020-4cff-bfcb-887edd21c9ca.zarr/0/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/487f0bdd-a020-4cff-bfcb-887edd21c9ca/487f0bdd-a020-4cff-bfcb-887edd21c9ca.zarr/0/0/.zarray'],
          ['demo_2/2017-04/12/19-15-12.146_mkngff/487f0bdd-a020-4cff-bfcb-887edd21c9ca.zarr/0/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/487f0bdd-a020-4cff-bfcb-887edd21c9ca/487f0bdd-a020-4cff-bfcb-887edd21c9ca.zarr/0/1/.zarray'],
          ['demo_2/2017-04/12/19-15-12.146_mkngff/487f0bdd-a020-4cff-bfcb-887edd21c9ca.zarr/OME/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/487f0bdd-a020-4cff-bfcb-887edd21c9ca/487f0bdd-a020-4cff-bfcb-887edd21c9ca.zarr/OME/.zattrs'],
          ['demo_2/2017-04/12/19-15-12.146_mkngff/487f0bdd-a020-4cff-bfcb-887edd21c9ca.zarr/OME/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/487f0bdd-a020-4cff-bfcb-887edd21c9ca/487f0bdd-a020-4cff-bfcb-887edd21c9ca.zarr/OME/.zgroup'],
          ['demo_2/2017-04/12/19-15-12.146_mkngff/487f0bdd-a020-4cff-bfcb-887edd21c9ca.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/487f0bdd-a020-4cff-bfcb-887edd21c9ca/487f0bdd-a020-4cff-bfcb-887edd21c9ca.zarr/OME/METADATA.ome.xml']
      ]::text[][]
    );
commit;

