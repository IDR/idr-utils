UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/12/16-49-41.029_mkngff/8fb64e65-d01f-4ec3-a959-0bb9905fa8db.zarr/OME' where image in (select id from Image where fileset = 23278);

begin;
    select mkngff_fileset(
      23278,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/12/16-49-41.029_mkngff/',
      array[
          ['demo_2/2017-04/12/16-49-41.029_mkngff/8fb64e65-d01f-4ec3-a959-0bb9905fa8db.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/8fb64e65-d01f-4ec3-a959-0bb9905fa8db/8fb64e65-d01f-4ec3-a959-0bb9905fa8db.zarr/.zattrs'],
          ['demo_2/2017-04/12/16-49-41.029_mkngff/8fb64e65-d01f-4ec3-a959-0bb9905fa8db.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/8fb64e65-d01f-4ec3-a959-0bb9905fa8db/8fb64e65-d01f-4ec3-a959-0bb9905fa8db.zarr/.zgroup'],
          ['demo_2/2017-04/12/16-49-41.029_mkngff/8fb64e65-d01f-4ec3-a959-0bb9905fa8db.zarr/0/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/8fb64e65-d01f-4ec3-a959-0bb9905fa8db/8fb64e65-d01f-4ec3-a959-0bb9905fa8db.zarr/0/.zattrs'],
          ['demo_2/2017-04/12/16-49-41.029_mkngff/8fb64e65-d01f-4ec3-a959-0bb9905fa8db.zarr/0/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/8fb64e65-d01f-4ec3-a959-0bb9905fa8db/8fb64e65-d01f-4ec3-a959-0bb9905fa8db.zarr/0/.zgroup'],
          ['demo_2/2017-04/12/16-49-41.029_mkngff/8fb64e65-d01f-4ec3-a959-0bb9905fa8db.zarr/0/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/8fb64e65-d01f-4ec3-a959-0bb9905fa8db/8fb64e65-d01f-4ec3-a959-0bb9905fa8db.zarr/0/0/.zarray'],
          ['demo_2/2017-04/12/16-49-41.029_mkngff/8fb64e65-d01f-4ec3-a959-0bb9905fa8db.zarr/0/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/8fb64e65-d01f-4ec3-a959-0bb9905fa8db/8fb64e65-d01f-4ec3-a959-0bb9905fa8db.zarr/0/1/.zarray'],
          ['demo_2/2017-04/12/16-49-41.029_mkngff/8fb64e65-d01f-4ec3-a959-0bb9905fa8db.zarr/OME/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/8fb64e65-d01f-4ec3-a959-0bb9905fa8db/8fb64e65-d01f-4ec3-a959-0bb9905fa8db.zarr/OME/.zattrs'],
          ['demo_2/2017-04/12/16-49-41.029_mkngff/8fb64e65-d01f-4ec3-a959-0bb9905fa8db.zarr/OME/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/8fb64e65-d01f-4ec3-a959-0bb9905fa8db/8fb64e65-d01f-4ec3-a959-0bb9905fa8db.zarr/OME/.zgroup'],
          ['demo_2/2017-04/12/16-49-41.029_mkngff/8fb64e65-d01f-4ec3-a959-0bb9905fa8db.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/8fb64e65-d01f-4ec3-a959-0bb9905fa8db/8fb64e65-d01f-4ec3-a959-0bb9905fa8db.zarr/OME/METADATA.ome.xml']
      ]::text[][]
    );
commit;

