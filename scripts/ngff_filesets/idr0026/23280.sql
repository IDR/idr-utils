UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/12/17-07-30.862_mkngff/1d535c04-916e-47a7-857f-f731aa1f1951.zarr/OME' where image in (select id from Image where fileset = 23280);

begin;
    select mkngff_fileset(
      23280,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/12/17-07-30.862_mkngff/',
      array[
          ['demo_2/2017-04/12/17-07-30.862_mkngff/1d535c04-916e-47a7-857f-f731aa1f1951.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/12/17-07-30.862_mkngff/1d535c04-916e-47a7-857f-f731aa1f1951.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/12/17-07-30.862_mkngff/1d535c04-916e-47a7-857f-f731aa1f1951.zarr/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/12/17-07-30.862_mkngff/1d535c04-916e-47a7-857f-f731aa1f1951.zarr/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/12/17-07-30.862_mkngff/1d535c04-916e-47a7-857f-f731aa1f1951.zarr/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/12/17-07-30.862_mkngff/1d535c04-916e-47a7-857f-f731aa1f1951.zarr/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/12/17-07-30.862_mkngff/1d535c04-916e-47a7-857f-f731aa1f1951.zarr/OME/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/12/17-07-30.862_mkngff/1d535c04-916e-47a7-857f-f731aa1f1951.zarr/OME/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/12/17-07-30.862_mkngff/1d535c04-916e-47a7-857f-f731aa1f1951.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream']
      ]::text[][]
    );
commit;

