UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/12/19-52-46.832_mkngff/2f27cde2-d40d-4a7e-8085-6ba1c1d15aad.zarr/OME' where image in (select id from Image where fileset = 23308);

begin;
    select mkngff_fileset(
      23308,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/12/19-52-46.832_mkngff/',
      array[
          ['demo_2/2017-04/12/19-52-46.832_mkngff/2f27cde2-d40d-4a7e-8085-6ba1c1d15aad.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/2f27cde2-d40d-4a7e-8085-6ba1c1d15aad/2f27cde2-d40d-4a7e-8085-6ba1c1d15aad.zarr/.zattrs'],
          ['demo_2/2017-04/12/19-52-46.832_mkngff/2f27cde2-d40d-4a7e-8085-6ba1c1d15aad.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/2f27cde2-d40d-4a7e-8085-6ba1c1d15aad/2f27cde2-d40d-4a7e-8085-6ba1c1d15aad.zarr/.zgroup'],
          ['demo_2/2017-04/12/19-52-46.832_mkngff/2f27cde2-d40d-4a7e-8085-6ba1c1d15aad.zarr/0/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/2f27cde2-d40d-4a7e-8085-6ba1c1d15aad/2f27cde2-d40d-4a7e-8085-6ba1c1d15aad.zarr/0/.zattrs'],
          ['demo_2/2017-04/12/19-52-46.832_mkngff/2f27cde2-d40d-4a7e-8085-6ba1c1d15aad.zarr/0/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/2f27cde2-d40d-4a7e-8085-6ba1c1d15aad/2f27cde2-d40d-4a7e-8085-6ba1c1d15aad.zarr/0/.zgroup'],
          ['demo_2/2017-04/12/19-52-46.832_mkngff/2f27cde2-d40d-4a7e-8085-6ba1c1d15aad.zarr/0/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/2f27cde2-d40d-4a7e-8085-6ba1c1d15aad/2f27cde2-d40d-4a7e-8085-6ba1c1d15aad.zarr/0/0/.zarray'],
          ['demo_2/2017-04/12/19-52-46.832_mkngff/2f27cde2-d40d-4a7e-8085-6ba1c1d15aad.zarr/0/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/2f27cde2-d40d-4a7e-8085-6ba1c1d15aad/2f27cde2-d40d-4a7e-8085-6ba1c1d15aad.zarr/0/1/.zarray'],
          ['demo_2/2017-04/12/19-52-46.832_mkngff/2f27cde2-d40d-4a7e-8085-6ba1c1d15aad.zarr/OME/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/2f27cde2-d40d-4a7e-8085-6ba1c1d15aad/2f27cde2-d40d-4a7e-8085-6ba1c1d15aad.zarr/OME/.zattrs'],
          ['demo_2/2017-04/12/19-52-46.832_mkngff/2f27cde2-d40d-4a7e-8085-6ba1c1d15aad.zarr/OME/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/2f27cde2-d40d-4a7e-8085-6ba1c1d15aad/2f27cde2-d40d-4a7e-8085-6ba1c1d15aad.zarr/OME/.zgroup'],
          ['demo_2/2017-04/12/19-52-46.832_mkngff/2f27cde2-d40d-4a7e-8085-6ba1c1d15aad.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/2f27cde2-d40d-4a7e-8085-6ba1c1d15aad/2f27cde2-d40d-4a7e-8085-6ba1c1d15aad.zarr/OME/METADATA.ome.xml']
      ]::text[][]
    );
commit;

