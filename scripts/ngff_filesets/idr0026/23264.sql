UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/12/15-19-14.891_mkngff/9366997f-b790-4b91-848c-11d189f1500a.zarr/OME' where image in (select id from Image where fileset = 23264);

begin;
    select mkngff_fileset(
      23264,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/12/15-19-14.891_mkngff/',
      array[
          ['demo_2/2017-04/12/15-19-14.891_mkngff/9366997f-b790-4b91-848c-11d189f1500a.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/9366997f-b790-4b91-848c-11d189f1500a/9366997f-b790-4b91-848c-11d189f1500a.zarr/.zattrs'],
          ['demo_2/2017-04/12/15-19-14.891_mkngff/9366997f-b790-4b91-848c-11d189f1500a.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/9366997f-b790-4b91-848c-11d189f1500a/9366997f-b790-4b91-848c-11d189f1500a.zarr/.zgroup'],
          ['demo_2/2017-04/12/15-19-14.891_mkngff/9366997f-b790-4b91-848c-11d189f1500a.zarr/0/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/9366997f-b790-4b91-848c-11d189f1500a/9366997f-b790-4b91-848c-11d189f1500a.zarr/0/.zattrs'],
          ['demo_2/2017-04/12/15-19-14.891_mkngff/9366997f-b790-4b91-848c-11d189f1500a.zarr/0/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/9366997f-b790-4b91-848c-11d189f1500a/9366997f-b790-4b91-848c-11d189f1500a.zarr/0/.zgroup'],
          ['demo_2/2017-04/12/15-19-14.891_mkngff/9366997f-b790-4b91-848c-11d189f1500a.zarr/0/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/9366997f-b790-4b91-848c-11d189f1500a/9366997f-b790-4b91-848c-11d189f1500a.zarr/0/0/.zarray'],
          ['demo_2/2017-04/12/15-19-14.891_mkngff/9366997f-b790-4b91-848c-11d189f1500a.zarr/0/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/9366997f-b790-4b91-848c-11d189f1500a/9366997f-b790-4b91-848c-11d189f1500a.zarr/0/1/.zarray'],
          ['demo_2/2017-04/12/15-19-14.891_mkngff/9366997f-b790-4b91-848c-11d189f1500a.zarr/OME/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/9366997f-b790-4b91-848c-11d189f1500a/9366997f-b790-4b91-848c-11d189f1500a.zarr/OME/.zattrs'],
          ['demo_2/2017-04/12/15-19-14.891_mkngff/9366997f-b790-4b91-848c-11d189f1500a.zarr/OME/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/9366997f-b790-4b91-848c-11d189f1500a/9366997f-b790-4b91-848c-11d189f1500a.zarr/OME/.zgroup'],
          ['demo_2/2017-04/12/15-19-14.891_mkngff/9366997f-b790-4b91-848c-11d189f1500a.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/9366997f-b790-4b91-848c-11d189f1500a/9366997f-b790-4b91-848c-11d189f1500a.zarr/OME/METADATA.ome.xml']
      ]::text[][]
    );
commit;

