UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/13/03-03-53.530_mkngff/7f3ea4c8-7130-43c5-8081-4b00ba9813d4.zarr/OME' where image in (select id from Image where fileset = 23376);

begin;
    select mkngff_fileset(
      23376,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/13/03-03-53.530_mkngff/',
      array[
          ['demo_2/2017-04/13/03-03-53.530_mkngff/7f3ea4c8-7130-43c5-8081-4b00ba9813d4.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/7f3ea4c8-7130-43c5-8081-4b00ba9813d4/7f3ea4c8-7130-43c5-8081-4b00ba9813d4.zarr/.zattrs'],
          ['demo_2/2017-04/13/03-03-53.530_mkngff/7f3ea4c8-7130-43c5-8081-4b00ba9813d4.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/7f3ea4c8-7130-43c5-8081-4b00ba9813d4/7f3ea4c8-7130-43c5-8081-4b00ba9813d4.zarr/.zgroup'],
          ['demo_2/2017-04/13/03-03-53.530_mkngff/7f3ea4c8-7130-43c5-8081-4b00ba9813d4.zarr/0/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/7f3ea4c8-7130-43c5-8081-4b00ba9813d4/7f3ea4c8-7130-43c5-8081-4b00ba9813d4.zarr/0/.zattrs'],
          ['demo_2/2017-04/13/03-03-53.530_mkngff/7f3ea4c8-7130-43c5-8081-4b00ba9813d4.zarr/0/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/7f3ea4c8-7130-43c5-8081-4b00ba9813d4/7f3ea4c8-7130-43c5-8081-4b00ba9813d4.zarr/0/.zgroup'],
          ['demo_2/2017-04/13/03-03-53.530_mkngff/7f3ea4c8-7130-43c5-8081-4b00ba9813d4.zarr/0/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/7f3ea4c8-7130-43c5-8081-4b00ba9813d4/7f3ea4c8-7130-43c5-8081-4b00ba9813d4.zarr/0/0/.zarray'],
          ['demo_2/2017-04/13/03-03-53.530_mkngff/7f3ea4c8-7130-43c5-8081-4b00ba9813d4.zarr/0/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/7f3ea4c8-7130-43c5-8081-4b00ba9813d4/7f3ea4c8-7130-43c5-8081-4b00ba9813d4.zarr/0/1/.zarray'],
          ['demo_2/2017-04/13/03-03-53.530_mkngff/7f3ea4c8-7130-43c5-8081-4b00ba9813d4.zarr/OME/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/7f3ea4c8-7130-43c5-8081-4b00ba9813d4/7f3ea4c8-7130-43c5-8081-4b00ba9813d4.zarr/OME/.zattrs'],
          ['demo_2/2017-04/13/03-03-53.530_mkngff/7f3ea4c8-7130-43c5-8081-4b00ba9813d4.zarr/OME/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/7f3ea4c8-7130-43c5-8081-4b00ba9813d4/7f3ea4c8-7130-43c5-8081-4b00ba9813d4.zarr/OME/.zgroup'],
          ['demo_2/2017-04/13/03-03-53.530_mkngff/7f3ea4c8-7130-43c5-8081-4b00ba9813d4.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD860/7f3ea4c8-7130-43c5-8081-4b00ba9813d4/7f3ea4c8-7130-43c5-8081-4b00ba9813d4.zarr/OME/METADATA.ome.xml']
      ]::text[][]
    );
commit;

