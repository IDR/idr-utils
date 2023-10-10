UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/13/03-37-22.481_mkngff/91c75290-f677-42f7-964b-81496f19b966.zarr/OME' where image in (select id from Image where fileset = 23380);

begin;
    select mkngff_fileset(
      23380,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/13/03-37-22.481_mkngff/',
      array[
          ['demo_2/2017-04/13/03-37-22.481_mkngff/91c75290-f677-42f7-964b-81496f19b966.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/13/03-37-22.481_mkngff/91c75290-f677-42f7-964b-81496f19b966.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/13/03-37-22.481_mkngff/91c75290-f677-42f7-964b-81496f19b966.zarr/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/13/03-37-22.481_mkngff/91c75290-f677-42f7-964b-81496f19b966.zarr/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/13/03-37-22.481_mkngff/91c75290-f677-42f7-964b-81496f19b966.zarr/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/13/03-37-22.481_mkngff/91c75290-f677-42f7-964b-81496f19b966.zarr/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/13/03-37-22.481_mkngff/91c75290-f677-42f7-964b-81496f19b966.zarr/OME/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/13/03-37-22.481_mkngff/91c75290-f677-42f7-964b-81496f19b966.zarr/OME/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/13/03-37-22.481_mkngff/91c75290-f677-42f7-964b-81496f19b966.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream']
      ]::text[][]
    );
commit;
