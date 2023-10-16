UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/13/04-54-06.535_mkngff/cc6b7eac-c829-463f-aa52-14007014da5b.zarr/OME' where image in (select id from Image where fileset = 23397);

begin;
    select mkngff_fileset(
      23397,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/13/04-54-06.535_mkngff/',
      array[
          ['demo_2/2017-04/13/04-54-06.535_mkngff/cc6b7eac-c829-463f-aa52-14007014da5b.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/cc6b7eac-c829-463f-aa52-14007014da5b/cc6b7eac-c829-463f-aa52-14007014da5b.zarr/.zattrs'],
          ['demo_2/2017-04/13/04-54-06.535_mkngff/cc6b7eac-c829-463f-aa52-14007014da5b.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/cc6b7eac-c829-463f-aa52-14007014da5b/cc6b7eac-c829-463f-aa52-14007014da5b.zarr/.zgroup'],
          ['demo_2/2017-04/13/04-54-06.535_mkngff/cc6b7eac-c829-463f-aa52-14007014da5b.zarr/0/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/cc6b7eac-c829-463f-aa52-14007014da5b/cc6b7eac-c829-463f-aa52-14007014da5b.zarr/0/.zattrs'],
          ['demo_2/2017-04/13/04-54-06.535_mkngff/cc6b7eac-c829-463f-aa52-14007014da5b.zarr/0/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/cc6b7eac-c829-463f-aa52-14007014da5b/cc6b7eac-c829-463f-aa52-14007014da5b.zarr/0/.zgroup'],
          ['demo_2/2017-04/13/04-54-06.535_mkngff/cc6b7eac-c829-463f-aa52-14007014da5b.zarr/0/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/cc6b7eac-c829-463f-aa52-14007014da5b/cc6b7eac-c829-463f-aa52-14007014da5b.zarr/0/0/.zarray'],
          ['demo_2/2017-04/13/04-54-06.535_mkngff/cc6b7eac-c829-463f-aa52-14007014da5b.zarr/0/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/cc6b7eac-c829-463f-aa52-14007014da5b/cc6b7eac-c829-463f-aa52-14007014da5b.zarr/0/1/.zarray'],
          ['demo_2/2017-04/13/04-54-06.535_mkngff/cc6b7eac-c829-463f-aa52-14007014da5b.zarr/OME/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/cc6b7eac-c829-463f-aa52-14007014da5b/cc6b7eac-c829-463f-aa52-14007014da5b.zarr/OME/.zattrs'],
          ['demo_2/2017-04/13/04-54-06.535_mkngff/cc6b7eac-c829-463f-aa52-14007014da5b.zarr/OME/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/cc6b7eac-c829-463f-aa52-14007014da5b/cc6b7eac-c829-463f-aa52-14007014da5b.zarr/OME/.zgroup'],
          ['demo_2/2017-04/13/04-54-06.535_mkngff/cc6b7eac-c829-463f-aa52-14007014da5b.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/cc6b7eac-c829-463f-aa52-14007014da5b/cc6b7eac-c829-463f-aa52-14007014da5b.zarr/OME/METADATA.ome.xml']
      ]::text[][]
    );
commit;

