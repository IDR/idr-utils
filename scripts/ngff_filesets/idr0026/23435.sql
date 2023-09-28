UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/13/09-24-55.195_mkngff/15903751-b6ca-4d6e-a2bb-5d884e30d4f6.zarr/OME' where image in (select id from Image where fileset = 23435);

begin;
    select mkngff_fileset(
      23435,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/13/09-24-55.195_mkngff/',
      array[
          ['demo_2/2017-04/13/09-24-55.195_mkngff/15903751-b6ca-4d6e-a2bb-5d884e30d4f6.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/13/09-24-55.195_mkngff/15903751-b6ca-4d6e-a2bb-5d884e30d4f6.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/13/09-24-55.195_mkngff/15903751-b6ca-4d6e-a2bb-5d884e30d4f6.zarr/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/13/09-24-55.195_mkngff/15903751-b6ca-4d6e-a2bb-5d884e30d4f6.zarr/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/13/09-24-55.195_mkngff/15903751-b6ca-4d6e-a2bb-5d884e30d4f6.zarr/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/13/09-24-55.195_mkngff/15903751-b6ca-4d6e-a2bb-5d884e30d4f6.zarr/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/13/09-24-55.195_mkngff/15903751-b6ca-4d6e-a2bb-5d884e30d4f6.zarr/OME/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/13/09-24-55.195_mkngff/15903751-b6ca-4d6e-a2bb-5d884e30d4f6.zarr/OME/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/13/09-24-55.195_mkngff/15903751-b6ca-4d6e-a2bb-5d884e30d4f6.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream']
      ]::text[][]
    );
commit;

