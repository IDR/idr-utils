UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/12/16-58-34.514_mkngff/24d5d1cb-693e-43d0-aa77-757b57b7613b.zarr/OME' where image in (select id from Image where fileset = 23279);

begin;
    select mkngff_fileset(
      23279,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/12/16-58-34.514_mkngff/',
      array[
          ['demo_2/2017-04/12/16-58-34.514_mkngff/24d5d1cb-693e-43d0-aa77-757b57b7613b.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/24d5d1cb-693e-43d0-aa77-757b57b7613b/24d5d1cb-693e-43d0-aa77-757b57b7613b.zarr/.zattrs'],
          ['demo_2/2017-04/12/16-58-34.514_mkngff/24d5d1cb-693e-43d0-aa77-757b57b7613b.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/24d5d1cb-693e-43d0-aa77-757b57b7613b/24d5d1cb-693e-43d0-aa77-757b57b7613b.zarr/.zgroup'],
          ['demo_2/2017-04/12/16-58-34.514_mkngff/24d5d1cb-693e-43d0-aa77-757b57b7613b.zarr/0/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/24d5d1cb-693e-43d0-aa77-757b57b7613b/24d5d1cb-693e-43d0-aa77-757b57b7613b.zarr/0/.zattrs'],
          ['demo_2/2017-04/12/16-58-34.514_mkngff/24d5d1cb-693e-43d0-aa77-757b57b7613b.zarr/0/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/24d5d1cb-693e-43d0-aa77-757b57b7613b/24d5d1cb-693e-43d0-aa77-757b57b7613b.zarr/0/.zgroup'],
          ['demo_2/2017-04/12/16-58-34.514_mkngff/24d5d1cb-693e-43d0-aa77-757b57b7613b.zarr/0/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/24d5d1cb-693e-43d0-aa77-757b57b7613b/24d5d1cb-693e-43d0-aa77-757b57b7613b.zarr/0/0/.zarray'],
          ['demo_2/2017-04/12/16-58-34.514_mkngff/24d5d1cb-693e-43d0-aa77-757b57b7613b.zarr/0/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/24d5d1cb-693e-43d0-aa77-757b57b7613b/24d5d1cb-693e-43d0-aa77-757b57b7613b.zarr/0/1/.zarray'],
          ['demo_2/2017-04/12/16-58-34.514_mkngff/24d5d1cb-693e-43d0-aa77-757b57b7613b.zarr/OME/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/24d5d1cb-693e-43d0-aa77-757b57b7613b/24d5d1cb-693e-43d0-aa77-757b57b7613b.zarr/OME/.zattrs'],
          ['demo_2/2017-04/12/16-58-34.514_mkngff/24d5d1cb-693e-43d0-aa77-757b57b7613b.zarr/OME/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/24d5d1cb-693e-43d0-aa77-757b57b7613b/24d5d1cb-693e-43d0-aa77-757b57b7613b.zarr/OME/.zgroup'],
          ['demo_2/2017-04/12/16-58-34.514_mkngff/24d5d1cb-693e-43d0-aa77-757b57b7613b.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/24d5d1cb-693e-43d0-aa77-757b57b7613b/24d5d1cb-693e-43d0-aa77-757b57b7613b.zarr/OME/METADATA.ome.xml']
      ]::text[][]
    );
commit;

