UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/12/22-11-34.736_mkngff/6252ad4c-c457-4232-be02-95bacb0dcc62.zarr/OME' where image in (select id from Image where fileset = 23333);

begin;
    select mkngff_fileset(
      23333,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/12/22-11-34.736_mkngff/',
      array[
          ['demo_2/2017-04/12/22-11-34.736_mkngff/6252ad4c-c457-4232-be02-95bacb0dcc62.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/12/22-11-34.736_mkngff/6252ad4c-c457-4232-be02-95bacb0dcc62.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/12/22-11-34.736_mkngff/6252ad4c-c457-4232-be02-95bacb0dcc62.zarr/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/12/22-11-34.736_mkngff/6252ad4c-c457-4232-be02-95bacb0dcc62.zarr/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/12/22-11-34.736_mkngff/6252ad4c-c457-4232-be02-95bacb0dcc62.zarr/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/12/22-11-34.736_mkngff/6252ad4c-c457-4232-be02-95bacb0dcc62.zarr/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/12/22-11-34.736_mkngff/6252ad4c-c457-4232-be02-95bacb0dcc62.zarr/OME/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/12/22-11-34.736_mkngff/6252ad4c-c457-4232-be02-95bacb0dcc62.zarr/OME/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/12/22-11-34.736_mkngff/6252ad4c-c457-4232-be02-95bacb0dcc62.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream']
      ]::text[][]
    );
commit;

