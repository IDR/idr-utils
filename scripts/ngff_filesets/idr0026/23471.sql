UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/13/14-03-23.395_mkngff/ca3424ee-d787-4e5e-901e-372780fd2ae5.zarr/OME' where image in (select id from Image where fileset = 23471);

begin;
    select mkngff_fileset(
      23471,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/13/14-03-23.395_mkngff/',
      array[
          ['demo_2/2017-04/13/14-03-23.395_mkngff/ca3424ee-d787-4e5e-901e-372780fd2ae5.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/13/14-03-23.395_mkngff/ca3424ee-d787-4e5e-901e-372780fd2ae5.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/13/14-03-23.395_mkngff/ca3424ee-d787-4e5e-901e-372780fd2ae5.zarr/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/13/14-03-23.395_mkngff/ca3424ee-d787-4e5e-901e-372780fd2ae5.zarr/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/13/14-03-23.395_mkngff/ca3424ee-d787-4e5e-901e-372780fd2ae5.zarr/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/13/14-03-23.395_mkngff/ca3424ee-d787-4e5e-901e-372780fd2ae5.zarr/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/13/14-03-23.395_mkngff/ca3424ee-d787-4e5e-901e-372780fd2ae5.zarr/OME/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/13/14-03-23.395_mkngff/ca3424ee-d787-4e5e-901e-372780fd2ae5.zarr/OME/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/13/14-03-23.395_mkngff/ca3424ee-d787-4e5e-901e-372780fd2ae5.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream']
      ]::text[][]
    );
commit;

