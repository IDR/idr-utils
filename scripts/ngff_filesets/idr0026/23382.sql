UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/13/03-54-59.621_mkngff/09222b9a-ac74-4a32-a00c-debd5fd85023.zarr/OME' where image in (select id from Image where fileset = 23382);

begin;
    select mkngff_fileset(
      23382,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/13/03-54-59.621_mkngff/',
      array[
          ['demo_2/2017-04/13/03-54-59.621_mkngff/09222b9a-ac74-4a32-a00c-debd5fd85023.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/09222b9a-ac74-4a32-a00c-debd5fd85023/09222b9a-ac74-4a32-a00c-debd5fd85023.zarr/.zattrs'],
          ['demo_2/2017-04/13/03-54-59.621_mkngff/09222b9a-ac74-4a32-a00c-debd5fd85023.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/09222b9a-ac74-4a32-a00c-debd5fd85023/09222b9a-ac74-4a32-a00c-debd5fd85023.zarr/.zgroup'],
          ['demo_2/2017-04/13/03-54-59.621_mkngff/09222b9a-ac74-4a32-a00c-debd5fd85023.zarr/0/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/09222b9a-ac74-4a32-a00c-debd5fd85023/09222b9a-ac74-4a32-a00c-debd5fd85023.zarr/0/.zattrs'],
          ['demo_2/2017-04/13/03-54-59.621_mkngff/09222b9a-ac74-4a32-a00c-debd5fd85023.zarr/0/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/09222b9a-ac74-4a32-a00c-debd5fd85023/09222b9a-ac74-4a32-a00c-debd5fd85023.zarr/0/.zgroup'],
          ['demo_2/2017-04/13/03-54-59.621_mkngff/09222b9a-ac74-4a32-a00c-debd5fd85023.zarr/0/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/09222b9a-ac74-4a32-a00c-debd5fd85023/09222b9a-ac74-4a32-a00c-debd5fd85023.zarr/0/0/.zarray'],
          ['demo_2/2017-04/13/03-54-59.621_mkngff/09222b9a-ac74-4a32-a00c-debd5fd85023.zarr/0/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/09222b9a-ac74-4a32-a00c-debd5fd85023/09222b9a-ac74-4a32-a00c-debd5fd85023.zarr/0/1/.zarray'],
          ['demo_2/2017-04/13/03-54-59.621_mkngff/09222b9a-ac74-4a32-a00c-debd5fd85023.zarr/OME/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/09222b9a-ac74-4a32-a00c-debd5fd85023/09222b9a-ac74-4a32-a00c-debd5fd85023.zarr/OME/.zattrs'],
          ['demo_2/2017-04/13/03-54-59.621_mkngff/09222b9a-ac74-4a32-a00c-debd5fd85023.zarr/OME/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/09222b9a-ac74-4a32-a00c-debd5fd85023/09222b9a-ac74-4a32-a00c-debd5fd85023.zarr/OME/.zgroup'],
          ['demo_2/2017-04/13/03-54-59.621_mkngff/09222b9a-ac74-4a32-a00c-debd5fd85023.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/09222b9a-ac74-4a32-a00c-debd5fd85023/09222b9a-ac74-4a32-a00c-debd5fd85023.zarr/OME/METADATA.ome.xml']
      ]::text[][]
    );
commit;

