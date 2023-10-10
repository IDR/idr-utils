UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/12/15-33-48.641_mkngff/9acd5ac8-e64d-47c2-8b05-a40735450222.zarr/OME' where image in (select id from Image where fileset = 23265);

begin;
    select mkngff_fileset(
      23265,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/12/15-33-48.641_mkngff/',
      array[
          ['demo_2/2017-04/12/15-33-48.641_mkngff/9acd5ac8-e64d-47c2-8b05-a40735450222.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/12/15-33-48.641_mkngff/9acd5ac8-e64d-47c2-8b05-a40735450222.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/12/15-33-48.641_mkngff/9acd5ac8-e64d-47c2-8b05-a40735450222.zarr/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/12/15-33-48.641_mkngff/9acd5ac8-e64d-47c2-8b05-a40735450222.zarr/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/12/15-33-48.641_mkngff/9acd5ac8-e64d-47c2-8b05-a40735450222.zarr/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/12/15-33-48.641_mkngff/9acd5ac8-e64d-47c2-8b05-a40735450222.zarr/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/12/15-33-48.641_mkngff/9acd5ac8-e64d-47c2-8b05-a40735450222.zarr/OME/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/12/15-33-48.641_mkngff/9acd5ac8-e64d-47c2-8b05-a40735450222.zarr/OME/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/12/15-33-48.641_mkngff/9acd5ac8-e64d-47c2-8b05-a40735450222.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream']
      ]::text[][]
    );
commit;
