UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/12/15-54-02.254_mkngff/7cb5b284-f4da-4e42-90f9-1e22cfa06a73.zarr/OME' where image in (select id from Image where fileset = 23271);

begin;
    select mkngff_fileset(
      23271,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/12/15-54-02.254_mkngff/',
      array[
          ['demo_2/2017-04/12/15-54-02.254_mkngff/7cb5b284-f4da-4e42-90f9-1e22cfa06a73.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/7cb5b284-f4da-4e42-90f9-1e22cfa06a73/7cb5b284-f4da-4e42-90f9-1e22cfa06a73.zarr/.zattrs'],
          ['demo_2/2017-04/12/15-54-02.254_mkngff/7cb5b284-f4da-4e42-90f9-1e22cfa06a73.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/7cb5b284-f4da-4e42-90f9-1e22cfa06a73/7cb5b284-f4da-4e42-90f9-1e22cfa06a73.zarr/.zgroup'],
          ['demo_2/2017-04/12/15-54-02.254_mkngff/7cb5b284-f4da-4e42-90f9-1e22cfa06a73.zarr/0/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/7cb5b284-f4da-4e42-90f9-1e22cfa06a73/7cb5b284-f4da-4e42-90f9-1e22cfa06a73.zarr/0/.zattrs'],
          ['demo_2/2017-04/12/15-54-02.254_mkngff/7cb5b284-f4da-4e42-90f9-1e22cfa06a73.zarr/0/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/7cb5b284-f4da-4e42-90f9-1e22cfa06a73/7cb5b284-f4da-4e42-90f9-1e22cfa06a73.zarr/0/.zgroup'],
          ['demo_2/2017-04/12/15-54-02.254_mkngff/7cb5b284-f4da-4e42-90f9-1e22cfa06a73.zarr/0/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/7cb5b284-f4da-4e42-90f9-1e22cfa06a73/7cb5b284-f4da-4e42-90f9-1e22cfa06a73.zarr/0/0/.zarray'],
          ['demo_2/2017-04/12/15-54-02.254_mkngff/7cb5b284-f4da-4e42-90f9-1e22cfa06a73.zarr/0/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/7cb5b284-f4da-4e42-90f9-1e22cfa06a73/7cb5b284-f4da-4e42-90f9-1e22cfa06a73.zarr/0/1/.zarray'],
          ['demo_2/2017-04/12/15-54-02.254_mkngff/7cb5b284-f4da-4e42-90f9-1e22cfa06a73.zarr/OME/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/7cb5b284-f4da-4e42-90f9-1e22cfa06a73/7cb5b284-f4da-4e42-90f9-1e22cfa06a73.zarr/OME/.zattrs'],
          ['demo_2/2017-04/12/15-54-02.254_mkngff/7cb5b284-f4da-4e42-90f9-1e22cfa06a73.zarr/OME/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/7cb5b284-f4da-4e42-90f9-1e22cfa06a73/7cb5b284-f4da-4e42-90f9-1e22cfa06a73.zarr/OME/.zgroup'],
          ['demo_2/2017-04/12/15-54-02.254_mkngff/7cb5b284-f4da-4e42-90f9-1e22cfa06a73.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/7cb5b284-f4da-4e42-90f9-1e22cfa06a73/7cb5b284-f4da-4e42-90f9-1e22cfa06a73.zarr/OME/METADATA.ome.xml']
      ]::text[][]
    );
commit;

