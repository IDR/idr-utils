UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/13/03-46-13.527_mkngff/d741a20d-5366-4f81-ba1e-8b53eef36bef.zarr/OME' where image in (select id from Image where fileset = 23381);

begin;
    select mkngff_fileset(
      23381,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/13/03-46-13.527_mkngff/',
      array[
          ['demo_2/2017-04/13/03-46-13.527_mkngff/d741a20d-5366-4f81-ba1e-8b53eef36bef.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/d741a20d-5366-4f81-ba1e-8b53eef36bef/d741a20d-5366-4f81-ba1e-8b53eef36bef.zarr/.zattrs'],
          ['demo_2/2017-04/13/03-46-13.527_mkngff/d741a20d-5366-4f81-ba1e-8b53eef36bef.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/d741a20d-5366-4f81-ba1e-8b53eef36bef/d741a20d-5366-4f81-ba1e-8b53eef36bef.zarr/.zgroup'],
          ['demo_2/2017-04/13/03-46-13.527_mkngff/d741a20d-5366-4f81-ba1e-8b53eef36bef.zarr/0/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/d741a20d-5366-4f81-ba1e-8b53eef36bef/d741a20d-5366-4f81-ba1e-8b53eef36bef.zarr/0/.zattrs'],
          ['demo_2/2017-04/13/03-46-13.527_mkngff/d741a20d-5366-4f81-ba1e-8b53eef36bef.zarr/0/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/d741a20d-5366-4f81-ba1e-8b53eef36bef/d741a20d-5366-4f81-ba1e-8b53eef36bef.zarr/0/.zgroup'],
          ['demo_2/2017-04/13/03-46-13.527_mkngff/d741a20d-5366-4f81-ba1e-8b53eef36bef.zarr/0/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/d741a20d-5366-4f81-ba1e-8b53eef36bef/d741a20d-5366-4f81-ba1e-8b53eef36bef.zarr/0/0/.zarray'],
          ['demo_2/2017-04/13/03-46-13.527_mkngff/d741a20d-5366-4f81-ba1e-8b53eef36bef.zarr/0/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/d741a20d-5366-4f81-ba1e-8b53eef36bef/d741a20d-5366-4f81-ba1e-8b53eef36bef.zarr/0/1/.zarray'],
          ['demo_2/2017-04/13/03-46-13.527_mkngff/d741a20d-5366-4f81-ba1e-8b53eef36bef.zarr/OME/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/d741a20d-5366-4f81-ba1e-8b53eef36bef/d741a20d-5366-4f81-ba1e-8b53eef36bef.zarr/OME/.zattrs'],
          ['demo_2/2017-04/13/03-46-13.527_mkngff/d741a20d-5366-4f81-ba1e-8b53eef36bef.zarr/OME/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/d741a20d-5366-4f81-ba1e-8b53eef36bef/d741a20d-5366-4f81-ba1e-8b53eef36bef.zarr/OME/.zgroup'],
          ['demo_2/2017-04/13/03-46-13.527_mkngff/d741a20d-5366-4f81-ba1e-8b53eef36bef.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/d741a20d-5366-4f81-ba1e-8b53eef36bef/d741a20d-5366-4f81-ba1e-8b53eef36bef.zarr/OME/METADATA.ome.xml']
      ]::text[][]
    );
commit;

