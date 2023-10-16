UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/12/14-50-01.387_mkngff/400d402a-1db9-4fd2-8aeb-9b1d2c880d0f.zarr/OME' where image in (select id from Image where fileset = 23262);

begin;
    select mkngff_fileset(
      23262,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/12/14-50-01.387_mkngff/',
      array[
          ['demo_2/2017-04/12/14-50-01.387_mkngff/400d402a-1db9-4fd2-8aeb-9b1d2c880d0f.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/400d402a-1db9-4fd2-8aeb-9b1d2c880d0f/400d402a-1db9-4fd2-8aeb-9b1d2c880d0f.zarr/.zattrs'],
          ['demo_2/2017-04/12/14-50-01.387_mkngff/400d402a-1db9-4fd2-8aeb-9b1d2c880d0f.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/400d402a-1db9-4fd2-8aeb-9b1d2c880d0f/400d402a-1db9-4fd2-8aeb-9b1d2c880d0f.zarr/.zgroup'],
          ['demo_2/2017-04/12/14-50-01.387_mkngff/400d402a-1db9-4fd2-8aeb-9b1d2c880d0f.zarr/0/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/400d402a-1db9-4fd2-8aeb-9b1d2c880d0f/400d402a-1db9-4fd2-8aeb-9b1d2c880d0f.zarr/0/.zattrs'],
          ['demo_2/2017-04/12/14-50-01.387_mkngff/400d402a-1db9-4fd2-8aeb-9b1d2c880d0f.zarr/0/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/400d402a-1db9-4fd2-8aeb-9b1d2c880d0f/400d402a-1db9-4fd2-8aeb-9b1d2c880d0f.zarr/0/.zgroup'],
          ['demo_2/2017-04/12/14-50-01.387_mkngff/400d402a-1db9-4fd2-8aeb-9b1d2c880d0f.zarr/0/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/400d402a-1db9-4fd2-8aeb-9b1d2c880d0f/400d402a-1db9-4fd2-8aeb-9b1d2c880d0f.zarr/0/0/.zarray'],
          ['demo_2/2017-04/12/14-50-01.387_mkngff/400d402a-1db9-4fd2-8aeb-9b1d2c880d0f.zarr/0/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/400d402a-1db9-4fd2-8aeb-9b1d2c880d0f/400d402a-1db9-4fd2-8aeb-9b1d2c880d0f.zarr/0/1/.zarray'],
          ['demo_2/2017-04/12/14-50-01.387_mkngff/400d402a-1db9-4fd2-8aeb-9b1d2c880d0f.zarr/OME/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/400d402a-1db9-4fd2-8aeb-9b1d2c880d0f/400d402a-1db9-4fd2-8aeb-9b1d2c880d0f.zarr/OME/.zattrs'],
          ['demo_2/2017-04/12/14-50-01.387_mkngff/400d402a-1db9-4fd2-8aeb-9b1d2c880d0f.zarr/OME/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/400d402a-1db9-4fd2-8aeb-9b1d2c880d0f/400d402a-1db9-4fd2-8aeb-9b1d2c880d0f.zarr/OME/.zgroup'],
          ['demo_2/2017-04/12/14-50-01.387_mkngff/400d402a-1db9-4fd2-8aeb-9b1d2c880d0f.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/400d402a-1db9-4fd2-8aeb-9b1d2c880d0f/400d402a-1db9-4fd2-8aeb-9b1d2c880d0f.zarr/OME/METADATA.ome.xml']
      ]::text[][]
    );
commit;

