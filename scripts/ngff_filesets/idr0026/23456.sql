UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/13/12-21-08.069_mkngff/d2e1bb7a-6037-47c1-bf01-089ea06a402c.zarr/OME' where image in (select id from Image where fileset = 23456);

begin;
    select mkngff_fileset(
      23456,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/13/12-21-08.069_mkngff/',
      array[
          ['demo_2/2017-04/13/12-21-08.069_mkngff/d2e1bb7a-6037-47c1-bf01-089ea06a402c.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/13/12-21-08.069_mkngff/d2e1bb7a-6037-47c1-bf01-089ea06a402c.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/13/12-21-08.069_mkngff/d2e1bb7a-6037-47c1-bf01-089ea06a402c.zarr/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/13/12-21-08.069_mkngff/d2e1bb7a-6037-47c1-bf01-089ea06a402c.zarr/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/13/12-21-08.069_mkngff/d2e1bb7a-6037-47c1-bf01-089ea06a402c.zarr/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/13/12-21-08.069_mkngff/d2e1bb7a-6037-47c1-bf01-089ea06a402c.zarr/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/13/12-21-08.069_mkngff/d2e1bb7a-6037-47c1-bf01-089ea06a402c.zarr/OME/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/13/12-21-08.069_mkngff/d2e1bb7a-6037-47c1-bf01-089ea06a402c.zarr/OME/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/13/12-21-08.069_mkngff/d2e1bb7a-6037-47c1-bf01-089ea06a402c.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream']
      ]::text[][]
    );
commit;

