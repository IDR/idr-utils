UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/12/21-03-47.064_mkngff/737f487c-bb68-4786-bc13-bb05d9b43845.zarr/OME' where image in (select id from Image where fileset = 23314);

begin;
    select mkngff_fileset(
      23314,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/12/21-03-47.064_mkngff/',
      array[
          ['demo_2/2017-04/12/21-03-47.064_mkngff/737f487c-bb68-4786-bc13-bb05d9b43845.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/12/21-03-47.064_mkngff/737f487c-bb68-4786-bc13-bb05d9b43845.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/12/21-03-47.064_mkngff/737f487c-bb68-4786-bc13-bb05d9b43845.zarr/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/12/21-03-47.064_mkngff/737f487c-bb68-4786-bc13-bb05d9b43845.zarr/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/12/21-03-47.064_mkngff/737f487c-bb68-4786-bc13-bb05d9b43845.zarr/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/12/21-03-47.064_mkngff/737f487c-bb68-4786-bc13-bb05d9b43845.zarr/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/12/21-03-47.064_mkngff/737f487c-bb68-4786-bc13-bb05d9b43845.zarr/OME/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/12/21-03-47.064_mkngff/737f487c-bb68-4786-bc13-bb05d9b43845.zarr/OME/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/12/21-03-47.064_mkngff/737f487c-bb68-4786-bc13-bb05d9b43845.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream']
      ]::text[][]
    );
commit;
