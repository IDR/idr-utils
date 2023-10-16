UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/13/11-39-01.915_mkngff/c85bfa19-ce52-4a09-9e90-09d0e2f3f0e7.zarr/OME' where image in (select id from Image where fileset = 23448);

begin;
    select mkngff_fileset(
      23448,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/13/11-39-01.915_mkngff/',
      array[
          ['demo_2/2017-04/13/11-39-01.915_mkngff/c85bfa19-ce52-4a09-9e90-09d0e2f3f0e7.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/c85bfa19-ce52-4a09-9e90-09d0e2f3f0e7/c85bfa19-ce52-4a09-9e90-09d0e2f3f0e7.zarr/.zattrs'],
          ['demo_2/2017-04/13/11-39-01.915_mkngff/c85bfa19-ce52-4a09-9e90-09d0e2f3f0e7.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/c85bfa19-ce52-4a09-9e90-09d0e2f3f0e7/c85bfa19-ce52-4a09-9e90-09d0e2f3f0e7.zarr/.zgroup'],
          ['demo_2/2017-04/13/11-39-01.915_mkngff/c85bfa19-ce52-4a09-9e90-09d0e2f3f0e7.zarr/0/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/c85bfa19-ce52-4a09-9e90-09d0e2f3f0e7/c85bfa19-ce52-4a09-9e90-09d0e2f3f0e7.zarr/0/.zattrs'],
          ['demo_2/2017-04/13/11-39-01.915_mkngff/c85bfa19-ce52-4a09-9e90-09d0e2f3f0e7.zarr/0/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/c85bfa19-ce52-4a09-9e90-09d0e2f3f0e7/c85bfa19-ce52-4a09-9e90-09d0e2f3f0e7.zarr/0/.zgroup'],
          ['demo_2/2017-04/13/11-39-01.915_mkngff/c85bfa19-ce52-4a09-9e90-09d0e2f3f0e7.zarr/0/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/c85bfa19-ce52-4a09-9e90-09d0e2f3f0e7/c85bfa19-ce52-4a09-9e90-09d0e2f3f0e7.zarr/0/0/.zarray'],
          ['demo_2/2017-04/13/11-39-01.915_mkngff/c85bfa19-ce52-4a09-9e90-09d0e2f3f0e7.zarr/0/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/c85bfa19-ce52-4a09-9e90-09d0e2f3f0e7/c85bfa19-ce52-4a09-9e90-09d0e2f3f0e7.zarr/0/1/.zarray'],
          ['demo_2/2017-04/13/11-39-01.915_mkngff/c85bfa19-ce52-4a09-9e90-09d0e2f3f0e7.zarr/OME/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/c85bfa19-ce52-4a09-9e90-09d0e2f3f0e7/c85bfa19-ce52-4a09-9e90-09d0e2f3f0e7.zarr/OME/.zattrs'],
          ['demo_2/2017-04/13/11-39-01.915_mkngff/c85bfa19-ce52-4a09-9e90-09d0e2f3f0e7.zarr/OME/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/c85bfa19-ce52-4a09-9e90-09d0e2f3f0e7/c85bfa19-ce52-4a09-9e90-09d0e2f3f0e7.zarr/OME/.zgroup'],
          ['demo_2/2017-04/13/11-39-01.915_mkngff/c85bfa19-ce52-4a09-9e90-09d0e2f3f0e7.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/c85bfa19-ce52-4a09-9e90-09d0e2f3f0e7/c85bfa19-ce52-4a09-9e90-09d0e2f3f0e7.zarr/OME/METADATA.ome.xml']
      ]::text[][]
    );
commit;

