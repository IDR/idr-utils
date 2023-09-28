UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/12/20-23-22.151_mkngff/519ad2f4-0f5a-4ad4-ac6f-5535573f11bf.zarr/OME' where image in (select id from Image where fileset = 23311);

begin;
    select mkngff_fileset(
      23311,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/12/20-23-22.151_mkngff/',
      array[
          ['demo_2/2017-04/12/20-23-22.151_mkngff/519ad2f4-0f5a-4ad4-ac6f-5535573f11bf.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/12/20-23-22.151_mkngff/519ad2f4-0f5a-4ad4-ac6f-5535573f11bf.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/12/20-23-22.151_mkngff/519ad2f4-0f5a-4ad4-ac6f-5535573f11bf.zarr/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/12/20-23-22.151_mkngff/519ad2f4-0f5a-4ad4-ac6f-5535573f11bf.zarr/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/12/20-23-22.151_mkngff/519ad2f4-0f5a-4ad4-ac6f-5535573f11bf.zarr/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/12/20-23-22.151_mkngff/519ad2f4-0f5a-4ad4-ac6f-5535573f11bf.zarr/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/12/20-23-22.151_mkngff/519ad2f4-0f5a-4ad4-ac6f-5535573f11bf.zarr/OME/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/12/20-23-22.151_mkngff/519ad2f4-0f5a-4ad4-ac6f-5535573f11bf.zarr/OME/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/12/20-23-22.151_mkngff/519ad2f4-0f5a-4ad4-ac6f-5535573f11bf.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream']
      ]::text[][]
    );
commit;

