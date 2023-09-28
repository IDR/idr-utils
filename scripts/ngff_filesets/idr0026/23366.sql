UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/13/01-52-03.012_mkngff/6df6fd01-4e39-4f80-8126-2f25d81a49a1.zarr/OME' where image in (select id from Image where fileset = 23366);

begin;
    select mkngff_fileset(
      23366,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/13/01-52-03.012_mkngff/',
      array[
          ['demo_2/2017-04/13/01-52-03.012_mkngff/6df6fd01-4e39-4f80-8126-2f25d81a49a1.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/13/01-52-03.012_mkngff/6df6fd01-4e39-4f80-8126-2f25d81a49a1.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/13/01-52-03.012_mkngff/6df6fd01-4e39-4f80-8126-2f25d81a49a1.zarr/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/13/01-52-03.012_mkngff/6df6fd01-4e39-4f80-8126-2f25d81a49a1.zarr/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/13/01-52-03.012_mkngff/6df6fd01-4e39-4f80-8126-2f25d81a49a1.zarr/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/13/01-52-03.012_mkngff/6df6fd01-4e39-4f80-8126-2f25d81a49a1.zarr/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/13/01-52-03.012_mkngff/6df6fd01-4e39-4f80-8126-2f25d81a49a1.zarr/OME/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/13/01-52-03.012_mkngff/6df6fd01-4e39-4f80-8126-2f25d81a49a1.zarr/OME/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/13/01-52-03.012_mkngff/6df6fd01-4e39-4f80-8126-2f25d81a49a1.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream']
      ]::text[][]
    );
commit;

