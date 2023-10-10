UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2016-06/10/13-37-45.953_mkngff/90ef79de-8222-4b6d-aa4e-d4f1bd2f1350.zarr/OME' where image in (select id from Image where fileset = 21160);

begin;
    select mkngff_fileset(
      21160,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2016-06/10/13-37-45.953_mkngff/',
      array[
          ['demo_2/2016-06/10/13-37-45.953_mkngff/90ef79de-8222-4b6d-aa4e-d4f1bd2f1350.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-06/10/13-37-45.953_mkngff/90ef79de-8222-4b6d-aa4e-d4f1bd2f1350.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-06/10/13-37-45.953_mkngff/90ef79de-8222-4b6d-aa4e-d4f1bd2f1350.zarr/OME/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-06/10/13-37-45.953_mkngff/90ef79de-8222-4b6d-aa4e-d4f1bd2f1350.zarr/OME/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-06/10/13-37-45.953_mkngff/90ef79de-8222-4b6d-aa4e-d4f1bd2f1350.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream']
      ]::text[][]
    );
commit;

