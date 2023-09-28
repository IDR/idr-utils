UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/12/22-23-15.557_mkngff/66acf453-9e49-4087-9be9-9f53ef8c44f2.zarr/OME' where image in (select id from Image where fileset = 23334);

begin;
    select mkngff_fileset(
      23334,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/12/22-23-15.557_mkngff/',
      array[
          ['demo_2/2017-04/12/22-23-15.557_mkngff/66acf453-9e49-4087-9be9-9f53ef8c44f2.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/12/22-23-15.557_mkngff/66acf453-9e49-4087-9be9-9f53ef8c44f2.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/12/22-23-15.557_mkngff/66acf453-9e49-4087-9be9-9f53ef8c44f2.zarr/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/12/22-23-15.557_mkngff/66acf453-9e49-4087-9be9-9f53ef8c44f2.zarr/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/12/22-23-15.557_mkngff/66acf453-9e49-4087-9be9-9f53ef8c44f2.zarr/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/12/22-23-15.557_mkngff/66acf453-9e49-4087-9be9-9f53ef8c44f2.zarr/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/12/22-23-15.557_mkngff/66acf453-9e49-4087-9be9-9f53ef8c44f2.zarr/OME/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/12/22-23-15.557_mkngff/66acf453-9e49-4087-9be9-9f53ef8c44f2.zarr/OME/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/12/22-23-15.557_mkngff/66acf453-9e49-4087-9be9-9f53ef8c44f2.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream']
      ]::text[][]
    );
commit;

