UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/12/20-12-43.357_mkngff/f0c6a5a0-0801-4f44-969b-22101fadef7f.zarr/OME' where image in (select id from Image where fileset = 23310);

begin;
    select mkngff_fileset(
      23310,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/12/20-12-43.357_mkngff/',
      array[
          ['demo_2/2017-04/12/20-12-43.357_mkngff/f0c6a5a0-0801-4f44-969b-22101fadef7f.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/f0c6a5a0-0801-4f44-969b-22101fadef7f/f0c6a5a0-0801-4f44-969b-22101fadef7f.zarr/.zattrs'],
          ['demo_2/2017-04/12/20-12-43.357_mkngff/f0c6a5a0-0801-4f44-969b-22101fadef7f.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/f0c6a5a0-0801-4f44-969b-22101fadef7f/f0c6a5a0-0801-4f44-969b-22101fadef7f.zarr/.zgroup'],
          ['demo_2/2017-04/12/20-12-43.357_mkngff/f0c6a5a0-0801-4f44-969b-22101fadef7f.zarr/0/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/f0c6a5a0-0801-4f44-969b-22101fadef7f/f0c6a5a0-0801-4f44-969b-22101fadef7f.zarr/0/.zattrs'],
          ['demo_2/2017-04/12/20-12-43.357_mkngff/f0c6a5a0-0801-4f44-969b-22101fadef7f.zarr/0/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/f0c6a5a0-0801-4f44-969b-22101fadef7f/f0c6a5a0-0801-4f44-969b-22101fadef7f.zarr/0/.zgroup'],
          ['demo_2/2017-04/12/20-12-43.357_mkngff/f0c6a5a0-0801-4f44-969b-22101fadef7f.zarr/0/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/f0c6a5a0-0801-4f44-969b-22101fadef7f/f0c6a5a0-0801-4f44-969b-22101fadef7f.zarr/0/0/.zarray'],
          ['demo_2/2017-04/12/20-12-43.357_mkngff/f0c6a5a0-0801-4f44-969b-22101fadef7f.zarr/0/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/f0c6a5a0-0801-4f44-969b-22101fadef7f/f0c6a5a0-0801-4f44-969b-22101fadef7f.zarr/0/1/.zarray'],
          ['demo_2/2017-04/12/20-12-43.357_mkngff/f0c6a5a0-0801-4f44-969b-22101fadef7f.zarr/OME/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/f0c6a5a0-0801-4f44-969b-22101fadef7f/f0c6a5a0-0801-4f44-969b-22101fadef7f.zarr/OME/.zattrs'],
          ['demo_2/2017-04/12/20-12-43.357_mkngff/f0c6a5a0-0801-4f44-969b-22101fadef7f.zarr/OME/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/f0c6a5a0-0801-4f44-969b-22101fadef7f/f0c6a5a0-0801-4f44-969b-22101fadef7f.zarr/OME/.zgroup'],
          ['demo_2/2017-04/12/20-12-43.357_mkngff/f0c6a5a0-0801-4f44-969b-22101fadef7f.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/f0c6a5a0-0801-4f44-969b-22101fadef7f/f0c6a5a0-0801-4f44-969b-22101fadef7f.zarr/OME/METADATA.ome.xml']
      ]::text[][]
    );
commit;

