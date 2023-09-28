UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/13/08-04-59.607_mkngff/2a0da2bf-fba6-429f-9182-f887e89f49fc.zarr/OME' where image in (select id from Image where fileset = 23426);

begin;
    select mkngff_fileset(
      23426,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/13/08-04-59.607_mkngff/',
      array[
          ['demo_2/2017-04/13/08-04-59.607_mkngff/2a0da2bf-fba6-429f-9182-f887e89f49fc.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/13/08-04-59.607_mkngff/2a0da2bf-fba6-429f-9182-f887e89f49fc.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/13/08-04-59.607_mkngff/2a0da2bf-fba6-429f-9182-f887e89f49fc.zarr/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/13/08-04-59.607_mkngff/2a0da2bf-fba6-429f-9182-f887e89f49fc.zarr/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/13/08-04-59.607_mkngff/2a0da2bf-fba6-429f-9182-f887e89f49fc.zarr/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/13/08-04-59.607_mkngff/2a0da2bf-fba6-429f-9182-f887e89f49fc.zarr/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/13/08-04-59.607_mkngff/2a0da2bf-fba6-429f-9182-f887e89f49fc.zarr/OME/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/13/08-04-59.607_mkngff/2a0da2bf-fba6-429f-9182-f887e89f49fc.zarr/OME/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/13/08-04-59.607_mkngff/2a0da2bf-fba6-429f-9182-f887e89f49fc.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream']
      ]::text[][]
    );
commit;

