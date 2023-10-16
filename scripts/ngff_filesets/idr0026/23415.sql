UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/13/06-44-00.186_mkngff/7b7cc2ee-5dfd-445d-a0b4-4f58448486d0.zarr/OME' where image in (select id from Image where fileset = 23415);

begin;
    select mkngff_fileset(
      23415,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/13/06-44-00.186_mkngff/',
      array[
          ['demo_2/2017-04/13/06-44-00.186_mkngff/7b7cc2ee-5dfd-445d-a0b4-4f58448486d0.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/7b7cc2ee-5dfd-445d-a0b4-4f58448486d0/7b7cc2ee-5dfd-445d-a0b4-4f58448486d0.zarr/.zattrs'],
          ['demo_2/2017-04/13/06-44-00.186_mkngff/7b7cc2ee-5dfd-445d-a0b4-4f58448486d0.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/7b7cc2ee-5dfd-445d-a0b4-4f58448486d0/7b7cc2ee-5dfd-445d-a0b4-4f58448486d0.zarr/.zgroup'],
          ['demo_2/2017-04/13/06-44-00.186_mkngff/7b7cc2ee-5dfd-445d-a0b4-4f58448486d0.zarr/0/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/7b7cc2ee-5dfd-445d-a0b4-4f58448486d0/7b7cc2ee-5dfd-445d-a0b4-4f58448486d0.zarr/0/.zattrs'],
          ['demo_2/2017-04/13/06-44-00.186_mkngff/7b7cc2ee-5dfd-445d-a0b4-4f58448486d0.zarr/0/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/7b7cc2ee-5dfd-445d-a0b4-4f58448486d0/7b7cc2ee-5dfd-445d-a0b4-4f58448486d0.zarr/0/.zgroup'],
          ['demo_2/2017-04/13/06-44-00.186_mkngff/7b7cc2ee-5dfd-445d-a0b4-4f58448486d0.zarr/0/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/7b7cc2ee-5dfd-445d-a0b4-4f58448486d0/7b7cc2ee-5dfd-445d-a0b4-4f58448486d0.zarr/0/0/.zarray'],
          ['demo_2/2017-04/13/06-44-00.186_mkngff/7b7cc2ee-5dfd-445d-a0b4-4f58448486d0.zarr/0/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/7b7cc2ee-5dfd-445d-a0b4-4f58448486d0/7b7cc2ee-5dfd-445d-a0b4-4f58448486d0.zarr/0/1/.zarray'],
          ['demo_2/2017-04/13/06-44-00.186_mkngff/7b7cc2ee-5dfd-445d-a0b4-4f58448486d0.zarr/OME/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/7b7cc2ee-5dfd-445d-a0b4-4f58448486d0/7b7cc2ee-5dfd-445d-a0b4-4f58448486d0.zarr/OME/.zattrs'],
          ['demo_2/2017-04/13/06-44-00.186_mkngff/7b7cc2ee-5dfd-445d-a0b4-4f58448486d0.zarr/OME/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/7b7cc2ee-5dfd-445d-a0b4-4f58448486d0/7b7cc2ee-5dfd-445d-a0b4-4f58448486d0.zarr/OME/.zgroup'],
          ['demo_2/2017-04/13/06-44-00.186_mkngff/7b7cc2ee-5dfd-445d-a0b4-4f58448486d0.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/7b7cc2ee-5dfd-445d-a0b4-4f58448486d0/7b7cc2ee-5dfd-445d-a0b4-4f58448486d0.zarr/OME/METADATA.ome.xml']
      ]::text[][]
    );
commit;

