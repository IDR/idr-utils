UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/13/08-59-45.105_mkngff/3bb3ceeb-644a-4c73-bb10-98c58c9f153d.zarr/OME' where image in (select id from Image where fileset = 23429);

begin;
    select mkngff_fileset(
      23429,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/13/08-59-45.105_mkngff/',
      array[
          ['demo_2/2017-04/13/08-59-45.105_mkngff/3bb3ceeb-644a-4c73-bb10-98c58c9f153d.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/13/08-59-45.105_mkngff/3bb3ceeb-644a-4c73-bb10-98c58c9f153d.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/13/08-59-45.105_mkngff/3bb3ceeb-644a-4c73-bb10-98c58c9f153d.zarr/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/13/08-59-45.105_mkngff/3bb3ceeb-644a-4c73-bb10-98c58c9f153d.zarr/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/13/08-59-45.105_mkngff/3bb3ceeb-644a-4c73-bb10-98c58c9f153d.zarr/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/13/08-59-45.105_mkngff/3bb3ceeb-644a-4c73-bb10-98c58c9f153d.zarr/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/13/08-59-45.105_mkngff/3bb3ceeb-644a-4c73-bb10-98c58c9f153d.zarr/OME/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/13/08-59-45.105_mkngff/3bb3ceeb-644a-4c73-bb10-98c58c9f153d.zarr/OME/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/13/08-59-45.105_mkngff/3bb3ceeb-644a-4c73-bb10-98c58c9f153d.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream']
      ]::text[][]
    );
commit;

