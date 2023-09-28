UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/13/00-17-34.816_mkngff/afcb6948-204a-4074-923f-6c56505ae6ab.zarr/OME' where image in (select id from Image where fileset = 23357);

begin;
    select mkngff_fileset(
      23357,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/13/00-17-34.816_mkngff/',
      array[
          ['demo_2/2017-04/13/00-17-34.816_mkngff/afcb6948-204a-4074-923f-6c56505ae6ab.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/13/00-17-34.816_mkngff/afcb6948-204a-4074-923f-6c56505ae6ab.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/13/00-17-34.816_mkngff/afcb6948-204a-4074-923f-6c56505ae6ab.zarr/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/13/00-17-34.816_mkngff/afcb6948-204a-4074-923f-6c56505ae6ab.zarr/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/13/00-17-34.816_mkngff/afcb6948-204a-4074-923f-6c56505ae6ab.zarr/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/13/00-17-34.816_mkngff/afcb6948-204a-4074-923f-6c56505ae6ab.zarr/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/13/00-17-34.816_mkngff/afcb6948-204a-4074-923f-6c56505ae6ab.zarr/OME/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/13/00-17-34.816_mkngff/afcb6948-204a-4074-923f-6c56505ae6ab.zarr/OME/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/13/00-17-34.816_mkngff/afcb6948-204a-4074-923f-6c56505ae6ab.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream']
      ]::text[][]
    );
commit;

