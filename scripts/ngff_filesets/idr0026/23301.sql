UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/12/18-49-24.620_mkngff/3b8e0297-c95c-4460-adf8-75a29bfc132b.zarr/OME' where image in (select id from Image where fileset = 23301);

begin;
    select mkngff_fileset(
      23301,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/12/18-49-24.620_mkngff/',
      array[
          ['demo_2/2017-04/12/18-49-24.620_mkngff/3b8e0297-c95c-4460-adf8-75a29bfc132b.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/3b8e0297-c95c-4460-adf8-75a29bfc132b/3b8e0297-c95c-4460-adf8-75a29bfc132b.zarr/.zattrs'],
          ['demo_2/2017-04/12/18-49-24.620_mkngff/3b8e0297-c95c-4460-adf8-75a29bfc132b.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/3b8e0297-c95c-4460-adf8-75a29bfc132b/3b8e0297-c95c-4460-adf8-75a29bfc132b.zarr/.zgroup'],
          ['demo_2/2017-04/12/18-49-24.620_mkngff/3b8e0297-c95c-4460-adf8-75a29bfc132b.zarr/0/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/3b8e0297-c95c-4460-adf8-75a29bfc132b/3b8e0297-c95c-4460-adf8-75a29bfc132b.zarr/0/.zattrs'],
          ['demo_2/2017-04/12/18-49-24.620_mkngff/3b8e0297-c95c-4460-adf8-75a29bfc132b.zarr/0/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/3b8e0297-c95c-4460-adf8-75a29bfc132b/3b8e0297-c95c-4460-adf8-75a29bfc132b.zarr/0/.zgroup'],
          ['demo_2/2017-04/12/18-49-24.620_mkngff/3b8e0297-c95c-4460-adf8-75a29bfc132b.zarr/0/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/3b8e0297-c95c-4460-adf8-75a29bfc132b/3b8e0297-c95c-4460-adf8-75a29bfc132b.zarr/0/0/.zarray'],
          ['demo_2/2017-04/12/18-49-24.620_mkngff/3b8e0297-c95c-4460-adf8-75a29bfc132b.zarr/0/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/3b8e0297-c95c-4460-adf8-75a29bfc132b/3b8e0297-c95c-4460-adf8-75a29bfc132b.zarr/0/1/.zarray'],
          ['demo_2/2017-04/12/18-49-24.620_mkngff/3b8e0297-c95c-4460-adf8-75a29bfc132b.zarr/OME/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/3b8e0297-c95c-4460-adf8-75a29bfc132b/3b8e0297-c95c-4460-adf8-75a29bfc132b.zarr/OME/.zattrs'],
          ['demo_2/2017-04/12/18-49-24.620_mkngff/3b8e0297-c95c-4460-adf8-75a29bfc132b.zarr/OME/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/3b8e0297-c95c-4460-adf8-75a29bfc132b/3b8e0297-c95c-4460-adf8-75a29bfc132b.zarr/OME/.zgroup'],
          ['demo_2/2017-04/12/18-49-24.620_mkngff/3b8e0297-c95c-4460-adf8-75a29bfc132b.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/3b8e0297-c95c-4460-adf8-75a29bfc132b/3b8e0297-c95c-4460-adf8-75a29bfc132b.zarr/OME/METADATA.ome.xml']
      ]::text[][]
    );
commit;

