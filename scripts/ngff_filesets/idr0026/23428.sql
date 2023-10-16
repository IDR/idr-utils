UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/13/08-41-44.833_mkngff/b7a02b0c-3232-4542-a221-55d0f98230c7.zarr/OME' where image in (select id from Image where fileset = 23428);

begin;
    select mkngff_fileset(
      23428,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/13/08-41-44.833_mkngff/',
      array[
          ['demo_2/2017-04/13/08-41-44.833_mkngff/b7a02b0c-3232-4542-a221-55d0f98230c7.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/b7a02b0c-3232-4542-a221-55d0f98230c7/b7a02b0c-3232-4542-a221-55d0f98230c7.zarr/.zattrs'],
          ['demo_2/2017-04/13/08-41-44.833_mkngff/b7a02b0c-3232-4542-a221-55d0f98230c7.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/b7a02b0c-3232-4542-a221-55d0f98230c7/b7a02b0c-3232-4542-a221-55d0f98230c7.zarr/.zgroup'],
          ['demo_2/2017-04/13/08-41-44.833_mkngff/b7a02b0c-3232-4542-a221-55d0f98230c7.zarr/0/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/b7a02b0c-3232-4542-a221-55d0f98230c7/b7a02b0c-3232-4542-a221-55d0f98230c7.zarr/0/.zattrs'],
          ['demo_2/2017-04/13/08-41-44.833_mkngff/b7a02b0c-3232-4542-a221-55d0f98230c7.zarr/0/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/b7a02b0c-3232-4542-a221-55d0f98230c7/b7a02b0c-3232-4542-a221-55d0f98230c7.zarr/0/.zgroup'],
          ['demo_2/2017-04/13/08-41-44.833_mkngff/b7a02b0c-3232-4542-a221-55d0f98230c7.zarr/0/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/b7a02b0c-3232-4542-a221-55d0f98230c7/b7a02b0c-3232-4542-a221-55d0f98230c7.zarr/0/0/.zarray'],
          ['demo_2/2017-04/13/08-41-44.833_mkngff/b7a02b0c-3232-4542-a221-55d0f98230c7.zarr/0/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/b7a02b0c-3232-4542-a221-55d0f98230c7/b7a02b0c-3232-4542-a221-55d0f98230c7.zarr/0/1/.zarray'],
          ['demo_2/2017-04/13/08-41-44.833_mkngff/b7a02b0c-3232-4542-a221-55d0f98230c7.zarr/OME/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/b7a02b0c-3232-4542-a221-55d0f98230c7/b7a02b0c-3232-4542-a221-55d0f98230c7.zarr/OME/.zattrs'],
          ['demo_2/2017-04/13/08-41-44.833_mkngff/b7a02b0c-3232-4542-a221-55d0f98230c7.zarr/OME/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/b7a02b0c-3232-4542-a221-55d0f98230c7/b7a02b0c-3232-4542-a221-55d0f98230c7.zarr/OME/.zgroup'],
          ['demo_2/2017-04/13/08-41-44.833_mkngff/b7a02b0c-3232-4542-a221-55d0f98230c7.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/b7a02b0c-3232-4542-a221-55d0f98230c7/b7a02b0c-3232-4542-a221-55d0f98230c7.zarr/OME/METADATA.ome.xml']
      ]::text[][]
    );
commit;

