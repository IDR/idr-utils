UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/12/23-21-26.272_mkngff/a5802f9c-3d00-4b7a-9fb4-c09975619bd3.zarr/OME' where image in (select id from Image where fileset = 23344);

begin;
    select mkngff_fileset(
      23344,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/12/23-21-26.272_mkngff/',
      array[
          ['demo_2/2017-04/12/23-21-26.272_mkngff/a5802f9c-3d00-4b7a-9fb4-c09975619bd3.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/12/23-21-26.272_mkngff/a5802f9c-3d00-4b7a-9fb4-c09975619bd3.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/12/23-21-26.272_mkngff/a5802f9c-3d00-4b7a-9fb4-c09975619bd3.zarr/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/12/23-21-26.272_mkngff/a5802f9c-3d00-4b7a-9fb4-c09975619bd3.zarr/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/12/23-21-26.272_mkngff/a5802f9c-3d00-4b7a-9fb4-c09975619bd3.zarr/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/12/23-21-26.272_mkngff/a5802f9c-3d00-4b7a-9fb4-c09975619bd3.zarr/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/12/23-21-26.272_mkngff/a5802f9c-3d00-4b7a-9fb4-c09975619bd3.zarr/OME/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/12/23-21-26.272_mkngff/a5802f9c-3d00-4b7a-9fb4-c09975619bd3.zarr/OME/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/12/23-21-26.272_mkngff/a5802f9c-3d00-4b7a-9fb4-c09975619bd3.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream']
      ]::text[][]
    );
commit;

