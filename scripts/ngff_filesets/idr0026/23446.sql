UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/13/11-19-45.392_mkngff/147acc22-f7e3-4211-a632-430b3aa1f44f.zarr/OME' where image in (select id from Image where fileset = 23446);

begin;
    select mkngff_fileset(
      23446,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/13/11-19-45.392_mkngff/',
      array[
          ['demo_2/2017-04/13/11-19-45.392_mkngff/147acc22-f7e3-4211-a632-430b3aa1f44f.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/147acc22-f7e3-4211-a632-430b3aa1f44f/147acc22-f7e3-4211-a632-430b3aa1f44f.zarr/.zattrs'],
          ['demo_2/2017-04/13/11-19-45.392_mkngff/147acc22-f7e3-4211-a632-430b3aa1f44f.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/147acc22-f7e3-4211-a632-430b3aa1f44f/147acc22-f7e3-4211-a632-430b3aa1f44f.zarr/.zgroup'],
          ['demo_2/2017-04/13/11-19-45.392_mkngff/147acc22-f7e3-4211-a632-430b3aa1f44f.zarr/0/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/147acc22-f7e3-4211-a632-430b3aa1f44f/147acc22-f7e3-4211-a632-430b3aa1f44f.zarr/0/.zattrs'],
          ['demo_2/2017-04/13/11-19-45.392_mkngff/147acc22-f7e3-4211-a632-430b3aa1f44f.zarr/0/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/147acc22-f7e3-4211-a632-430b3aa1f44f/147acc22-f7e3-4211-a632-430b3aa1f44f.zarr/0/.zgroup'],
          ['demo_2/2017-04/13/11-19-45.392_mkngff/147acc22-f7e3-4211-a632-430b3aa1f44f.zarr/0/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/147acc22-f7e3-4211-a632-430b3aa1f44f/147acc22-f7e3-4211-a632-430b3aa1f44f.zarr/0/0/.zarray'],
          ['demo_2/2017-04/13/11-19-45.392_mkngff/147acc22-f7e3-4211-a632-430b3aa1f44f.zarr/0/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/147acc22-f7e3-4211-a632-430b3aa1f44f/147acc22-f7e3-4211-a632-430b3aa1f44f.zarr/0/1/.zarray'],
          ['demo_2/2017-04/13/11-19-45.392_mkngff/147acc22-f7e3-4211-a632-430b3aa1f44f.zarr/OME/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/147acc22-f7e3-4211-a632-430b3aa1f44f/147acc22-f7e3-4211-a632-430b3aa1f44f.zarr/OME/.zattrs'],
          ['demo_2/2017-04/13/11-19-45.392_mkngff/147acc22-f7e3-4211-a632-430b3aa1f44f.zarr/OME/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/147acc22-f7e3-4211-a632-430b3aa1f44f/147acc22-f7e3-4211-a632-430b3aa1f44f.zarr/OME/.zgroup'],
          ['demo_2/2017-04/13/11-19-45.392_mkngff/147acc22-f7e3-4211-a632-430b3aa1f44f.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/147acc22-f7e3-4211-a632-430b3aa1f44f/147acc22-f7e3-4211-a632-430b3aa1f44f.zarr/OME/METADATA.ome.xml']
      ]::text[][]
    );
commit;

