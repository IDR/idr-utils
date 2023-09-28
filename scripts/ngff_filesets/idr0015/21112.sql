UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2016-06/06/00-58-20.828_mkngff/cfc34119-cbc6-4734-aa75-6923d3bd8c06.zarr/OME' where image in (select id from Image where fileset = 21112);

begin;
    select mkngff_fileset(
      21112,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2016-06/06/00-58-20.828_mkngff/',
      array[
          ['demo_2/2016-06/06/00-58-20.828_mkngff/cfc34119-cbc6-4734-aa75-6923d3bd8c06.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-06/06/00-58-20.828_mkngff/cfc34119-cbc6-4734-aa75-6923d3bd8c06.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-06/06/00-58-20.828_mkngff/cfc34119-cbc6-4734-aa75-6923d3bd8c06.zarr/OME/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-06/06/00-58-20.828_mkngff/cfc34119-cbc6-4734-aa75-6923d3bd8c06.zarr/OME/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-06/06/00-58-20.828_mkngff/cfc34119-cbc6-4734-aa75-6923d3bd8c06.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream']
      ]::text[][]
    );
commit;

