UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/12/19-32-24.548_mkngff/8c354082-8a71-476f-83a6-18d1a75f498b.zarr/OME' where image in (select id from Image where fileset = 23306);

begin;
    select mkngff_fileset(
      23306,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/12/19-32-24.548_mkngff/',
      array[
          ['demo_2/2017-04/12/19-32-24.548_mkngff/8c354082-8a71-476f-83a6-18d1a75f498b.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/8c354082-8a71-476f-83a6-18d1a75f498b/8c354082-8a71-476f-83a6-18d1a75f498b.zarr/.zattrs'],
          ['demo_2/2017-04/12/19-32-24.548_mkngff/8c354082-8a71-476f-83a6-18d1a75f498b.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/8c354082-8a71-476f-83a6-18d1a75f498b/8c354082-8a71-476f-83a6-18d1a75f498b.zarr/.zgroup'],
          ['demo_2/2017-04/12/19-32-24.548_mkngff/8c354082-8a71-476f-83a6-18d1a75f498b.zarr/0/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/8c354082-8a71-476f-83a6-18d1a75f498b/8c354082-8a71-476f-83a6-18d1a75f498b.zarr/0/.zattrs'],
          ['demo_2/2017-04/12/19-32-24.548_mkngff/8c354082-8a71-476f-83a6-18d1a75f498b.zarr/0/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/8c354082-8a71-476f-83a6-18d1a75f498b/8c354082-8a71-476f-83a6-18d1a75f498b.zarr/0/.zgroup'],
          ['demo_2/2017-04/12/19-32-24.548_mkngff/8c354082-8a71-476f-83a6-18d1a75f498b.zarr/0/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/8c354082-8a71-476f-83a6-18d1a75f498b/8c354082-8a71-476f-83a6-18d1a75f498b.zarr/0/0/.zarray'],
          ['demo_2/2017-04/12/19-32-24.548_mkngff/8c354082-8a71-476f-83a6-18d1a75f498b.zarr/0/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/8c354082-8a71-476f-83a6-18d1a75f498b/8c354082-8a71-476f-83a6-18d1a75f498b.zarr/0/1/.zarray'],
          ['demo_2/2017-04/12/19-32-24.548_mkngff/8c354082-8a71-476f-83a6-18d1a75f498b.zarr/OME/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/8c354082-8a71-476f-83a6-18d1a75f498b/8c354082-8a71-476f-83a6-18d1a75f498b.zarr/OME/.zattrs'],
          ['demo_2/2017-04/12/19-32-24.548_mkngff/8c354082-8a71-476f-83a6-18d1a75f498b.zarr/OME/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/8c354082-8a71-476f-83a6-18d1a75f498b/8c354082-8a71-476f-83a6-18d1a75f498b.zarr/OME/.zgroup'],
          ['demo_2/2017-04/12/19-32-24.548_mkngff/8c354082-8a71-476f-83a6-18d1a75f498b.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/8c354082-8a71-476f-83a6-18d1a75f498b/8c354082-8a71-476f-83a6-18d1a75f498b.zarr/OME/METADATA.ome.xml']
      ]::text[][]
    );
commit;

