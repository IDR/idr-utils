UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/12/16-31-54.198_mkngff/655f11cc-ac35-47ee-a989-da54c390c111.zarr/OME' where image in (select id from Image where fileset = 23276);

begin;
    select mkngff_fileset(
      23276,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/12/16-31-54.198_mkngff/',
      array[
          ['demo_2/2017-04/12/16-31-54.198_mkngff/655f11cc-ac35-47ee-a989-da54c390c111.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/655f11cc-ac35-47ee-a989-da54c390c111/655f11cc-ac35-47ee-a989-da54c390c111.zarr/.zattrs'],
          ['demo_2/2017-04/12/16-31-54.198_mkngff/655f11cc-ac35-47ee-a989-da54c390c111.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/655f11cc-ac35-47ee-a989-da54c390c111/655f11cc-ac35-47ee-a989-da54c390c111.zarr/.zgroup'],
          ['demo_2/2017-04/12/16-31-54.198_mkngff/655f11cc-ac35-47ee-a989-da54c390c111.zarr/0/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/655f11cc-ac35-47ee-a989-da54c390c111/655f11cc-ac35-47ee-a989-da54c390c111.zarr/0/.zattrs'],
          ['demo_2/2017-04/12/16-31-54.198_mkngff/655f11cc-ac35-47ee-a989-da54c390c111.zarr/0/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/655f11cc-ac35-47ee-a989-da54c390c111/655f11cc-ac35-47ee-a989-da54c390c111.zarr/0/.zgroup'],
          ['demo_2/2017-04/12/16-31-54.198_mkngff/655f11cc-ac35-47ee-a989-da54c390c111.zarr/0/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/655f11cc-ac35-47ee-a989-da54c390c111/655f11cc-ac35-47ee-a989-da54c390c111.zarr/0/0/.zarray'],
          ['demo_2/2017-04/12/16-31-54.198_mkngff/655f11cc-ac35-47ee-a989-da54c390c111.zarr/0/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/655f11cc-ac35-47ee-a989-da54c390c111/655f11cc-ac35-47ee-a989-da54c390c111.zarr/0/1/.zarray'],
          ['demo_2/2017-04/12/16-31-54.198_mkngff/655f11cc-ac35-47ee-a989-da54c390c111.zarr/OME/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/655f11cc-ac35-47ee-a989-da54c390c111/655f11cc-ac35-47ee-a989-da54c390c111.zarr/OME/.zattrs'],
          ['demo_2/2017-04/12/16-31-54.198_mkngff/655f11cc-ac35-47ee-a989-da54c390c111.zarr/OME/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/655f11cc-ac35-47ee-a989-da54c390c111/655f11cc-ac35-47ee-a989-da54c390c111.zarr/OME/.zgroup'],
          ['demo_2/2017-04/12/16-31-54.198_mkngff/655f11cc-ac35-47ee-a989-da54c390c111.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/655f11cc-ac35-47ee-a989-da54c390c111/655f11cc-ac35-47ee-a989-da54c390c111.zarr/OME/METADATA.ome.xml']
      ]::text[][]
    );
commit;

