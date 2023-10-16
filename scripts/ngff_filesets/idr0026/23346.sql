UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/12/23-40-17.055_mkngff/05d2e2c3-9ee2-4c14-876a-a7a29045c28f.zarr/OME' where image in (select id from Image where fileset = 23346);

begin;
    select mkngff_fileset(
      23346,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/12/23-40-17.055_mkngff/',
      array[
          ['demo_2/2017-04/12/23-40-17.055_mkngff/05d2e2c3-9ee2-4c14-876a-a7a29045c28f.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/05d2e2c3-9ee2-4c14-876a-a7a29045c28f/05d2e2c3-9ee2-4c14-876a-a7a29045c28f.zarr/.zattrs'],
          ['demo_2/2017-04/12/23-40-17.055_mkngff/05d2e2c3-9ee2-4c14-876a-a7a29045c28f.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/05d2e2c3-9ee2-4c14-876a-a7a29045c28f/05d2e2c3-9ee2-4c14-876a-a7a29045c28f.zarr/.zgroup'],
          ['demo_2/2017-04/12/23-40-17.055_mkngff/05d2e2c3-9ee2-4c14-876a-a7a29045c28f.zarr/0/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/05d2e2c3-9ee2-4c14-876a-a7a29045c28f/05d2e2c3-9ee2-4c14-876a-a7a29045c28f.zarr/0/.zattrs'],
          ['demo_2/2017-04/12/23-40-17.055_mkngff/05d2e2c3-9ee2-4c14-876a-a7a29045c28f.zarr/0/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/05d2e2c3-9ee2-4c14-876a-a7a29045c28f/05d2e2c3-9ee2-4c14-876a-a7a29045c28f.zarr/0/.zgroup'],
          ['demo_2/2017-04/12/23-40-17.055_mkngff/05d2e2c3-9ee2-4c14-876a-a7a29045c28f.zarr/0/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/05d2e2c3-9ee2-4c14-876a-a7a29045c28f/05d2e2c3-9ee2-4c14-876a-a7a29045c28f.zarr/0/0/.zarray'],
          ['demo_2/2017-04/12/23-40-17.055_mkngff/05d2e2c3-9ee2-4c14-876a-a7a29045c28f.zarr/0/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/05d2e2c3-9ee2-4c14-876a-a7a29045c28f/05d2e2c3-9ee2-4c14-876a-a7a29045c28f.zarr/0/1/.zarray'],
          ['demo_2/2017-04/12/23-40-17.055_mkngff/05d2e2c3-9ee2-4c14-876a-a7a29045c28f.zarr/OME/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/05d2e2c3-9ee2-4c14-876a-a7a29045c28f/05d2e2c3-9ee2-4c14-876a-a7a29045c28f.zarr/OME/.zattrs'],
          ['demo_2/2017-04/12/23-40-17.055_mkngff/05d2e2c3-9ee2-4c14-876a-a7a29045c28f.zarr/OME/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/05d2e2c3-9ee2-4c14-876a-a7a29045c28f/05d2e2c3-9ee2-4c14-876a-a7a29045c28f.zarr/OME/.zgroup'],
          ['demo_2/2017-04/12/23-40-17.055_mkngff/05d2e2c3-9ee2-4c14-876a-a7a29045c28f.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/05d2e2c3-9ee2-4c14-876a-a7a29045c28f/05d2e2c3-9ee2-4c14-876a-a7a29045c28f.zarr/OME/METADATA.ome.xml']
      ]::text[][]
    );
commit;

