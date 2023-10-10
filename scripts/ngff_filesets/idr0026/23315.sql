UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/12/21-17-23.804_mkngff/3f60b8c7-c6b1-4977-b5ea-9fd7bf6ab530.zarr/OME' where image in (select id from Image where fileset = 23315);

begin;
    select mkngff_fileset(
      23315,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/12/21-17-23.804_mkngff/',
      array[
          ['demo_2/2017-04/12/21-17-23.804_mkngff/3f60b8c7-c6b1-4977-b5ea-9fd7bf6ab530.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/12/21-17-23.804_mkngff/3f60b8c7-c6b1-4977-b5ea-9fd7bf6ab530.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/12/21-17-23.804_mkngff/3f60b8c7-c6b1-4977-b5ea-9fd7bf6ab530.zarr/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/12/21-17-23.804_mkngff/3f60b8c7-c6b1-4977-b5ea-9fd7bf6ab530.zarr/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/12/21-17-23.804_mkngff/3f60b8c7-c6b1-4977-b5ea-9fd7bf6ab530.zarr/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/12/21-17-23.804_mkngff/3f60b8c7-c6b1-4977-b5ea-9fd7bf6ab530.zarr/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/12/21-17-23.804_mkngff/3f60b8c7-c6b1-4977-b5ea-9fd7bf6ab530.zarr/OME/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/12/21-17-23.804_mkngff/3f60b8c7-c6b1-4977-b5ea-9fd7bf6ab530.zarr/OME/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/12/21-17-23.804_mkngff/3f60b8c7-c6b1-4977-b5ea-9fd7bf6ab530.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream']
      ]::text[][]
    );
commit;
