UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/13/02-20-37.369_mkngff/abc86f4f-6ca5-4410-a9b7-64c80a584b93.zarr/OME' where image in (select id from Image where fileset = 23368);

begin;
    select mkngff_fileset(
      23368,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/13/02-20-37.369_mkngff/',
      array[
          ['demo_2/2017-04/13/02-20-37.369_mkngff/abc86f4f-6ca5-4410-a9b7-64c80a584b93.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/13/02-20-37.369_mkngff/abc86f4f-6ca5-4410-a9b7-64c80a584b93.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/13/02-20-37.369_mkngff/abc86f4f-6ca5-4410-a9b7-64c80a584b93.zarr/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/13/02-20-37.369_mkngff/abc86f4f-6ca5-4410-a9b7-64c80a584b93.zarr/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/13/02-20-37.369_mkngff/abc86f4f-6ca5-4410-a9b7-64c80a584b93.zarr/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/13/02-20-37.369_mkngff/abc86f4f-6ca5-4410-a9b7-64c80a584b93.zarr/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/13/02-20-37.369_mkngff/abc86f4f-6ca5-4410-a9b7-64c80a584b93.zarr/OME/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/13/02-20-37.369_mkngff/abc86f4f-6ca5-4410-a9b7-64c80a584b93.zarr/OME/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/13/02-20-37.369_mkngff/abc86f4f-6ca5-4410-a9b7-64c80a584b93.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream']
      ]::text[][]
    );
commit;

