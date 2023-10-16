UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/13/04-28-46.106_mkngff/121e9549-3b13-4374-b93c-33b5c6b9e9ad.zarr/OME' where image in (select id from Image where fileset = 23395);

begin;
    select mkngff_fileset(
      23395,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/13/04-28-46.106_mkngff/',
      array[
          ['demo_2/2017-04/13/04-28-46.106_mkngff/121e9549-3b13-4374-b93c-33b5c6b9e9ad.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/121e9549-3b13-4374-b93c-33b5c6b9e9ad/121e9549-3b13-4374-b93c-33b5c6b9e9ad.zarr/.zattrs'],
          ['demo_2/2017-04/13/04-28-46.106_mkngff/121e9549-3b13-4374-b93c-33b5c6b9e9ad.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/121e9549-3b13-4374-b93c-33b5c6b9e9ad/121e9549-3b13-4374-b93c-33b5c6b9e9ad.zarr/.zgroup'],
          ['demo_2/2017-04/13/04-28-46.106_mkngff/121e9549-3b13-4374-b93c-33b5c6b9e9ad.zarr/0/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/121e9549-3b13-4374-b93c-33b5c6b9e9ad/121e9549-3b13-4374-b93c-33b5c6b9e9ad.zarr/0/.zattrs'],
          ['demo_2/2017-04/13/04-28-46.106_mkngff/121e9549-3b13-4374-b93c-33b5c6b9e9ad.zarr/0/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/121e9549-3b13-4374-b93c-33b5c6b9e9ad/121e9549-3b13-4374-b93c-33b5c6b9e9ad.zarr/0/.zgroup'],
          ['demo_2/2017-04/13/04-28-46.106_mkngff/121e9549-3b13-4374-b93c-33b5c6b9e9ad.zarr/0/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/121e9549-3b13-4374-b93c-33b5c6b9e9ad/121e9549-3b13-4374-b93c-33b5c6b9e9ad.zarr/0/0/.zarray'],
          ['demo_2/2017-04/13/04-28-46.106_mkngff/121e9549-3b13-4374-b93c-33b5c6b9e9ad.zarr/0/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/121e9549-3b13-4374-b93c-33b5c6b9e9ad/121e9549-3b13-4374-b93c-33b5c6b9e9ad.zarr/0/1/.zarray'],
          ['demo_2/2017-04/13/04-28-46.106_mkngff/121e9549-3b13-4374-b93c-33b5c6b9e9ad.zarr/OME/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/121e9549-3b13-4374-b93c-33b5c6b9e9ad/121e9549-3b13-4374-b93c-33b5c6b9e9ad.zarr/OME/.zattrs'],
          ['demo_2/2017-04/13/04-28-46.106_mkngff/121e9549-3b13-4374-b93c-33b5c6b9e9ad.zarr/OME/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/121e9549-3b13-4374-b93c-33b5c6b9e9ad/121e9549-3b13-4374-b93c-33b5c6b9e9ad.zarr/OME/.zgroup'],
          ['demo_2/2017-04/13/04-28-46.106_mkngff/121e9549-3b13-4374-b93c-33b5c6b9e9ad.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/121e9549-3b13-4374-b93c-33b5c6b9e9ad/121e9549-3b13-4374-b93c-33b5c6b9e9ad.zarr/OME/METADATA.ome.xml']
      ]::text[][]
    );
commit;

