UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/13/05-06-28.777_mkngff/f9052671-d2ea-4d6c-b7d6-7e84796a92cc.zarr/OME' where image in (select id from Image where fileset = 23398);

begin;
    select mkngff_fileset(
      23398,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/13/05-06-28.777_mkngff/',
      array[
          ['demo_2/2017-04/13/05-06-28.777_mkngff/f9052671-d2ea-4d6c-b7d6-7e84796a92cc.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/13/05-06-28.777_mkngff/f9052671-d2ea-4d6c-b7d6-7e84796a92cc.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/13/05-06-28.777_mkngff/f9052671-d2ea-4d6c-b7d6-7e84796a92cc.zarr/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/13/05-06-28.777_mkngff/f9052671-d2ea-4d6c-b7d6-7e84796a92cc.zarr/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/13/05-06-28.777_mkngff/f9052671-d2ea-4d6c-b7d6-7e84796a92cc.zarr/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/13/05-06-28.777_mkngff/f9052671-d2ea-4d6c-b7d6-7e84796a92cc.zarr/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/13/05-06-28.777_mkngff/f9052671-d2ea-4d6c-b7d6-7e84796a92cc.zarr/OME/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/13/05-06-28.777_mkngff/f9052671-d2ea-4d6c-b7d6-7e84796a92cc.zarr/OME/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/13/05-06-28.777_mkngff/f9052671-d2ea-4d6c-b7d6-7e84796a92cc.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream']
      ]::text[][]
    );
commit;

