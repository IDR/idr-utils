UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/OME' where image in (select id from Image where fileset = 21930);

begin;
    select mkngff_fileset(
      21930,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2016-07/28/21-31-28.685_mkngff/',
      array[
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/1/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/1/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/1/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/1/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/1/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/1/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/1/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/1/1/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/1/1/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/1/1/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/1/1/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/1/1/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/2/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/2/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/2/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/2/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/2/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/2/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/2/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/3/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/3/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/3/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/3/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/3/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/3/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/3/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/4/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/4/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/4/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/4/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/4/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/4/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/4/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/5/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/5/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/5/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/5/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/5/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/5/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/5/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/6/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/6/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/6/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/6/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/6/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/6/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/6/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/7/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/7/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/7/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/7/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/7/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/7/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/A/7/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/3/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/3/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/3/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/3/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/3/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/3/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/3/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/4/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/4/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/4/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/4/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/4/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/4/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/4/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/5/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/5/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/5/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/5/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/5/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/5/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/5/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/6/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/6/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/6/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/6/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/6/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/6/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/6/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/6/1/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/6/1/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/6/1/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/6/1/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/6/1/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/6/2/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/6/2/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/6/2/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/6/2/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/6/2/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/7/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/7/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/7/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/7/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/7/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/7/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/B/7/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/1/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/1/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/1/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/1/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/1/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/1/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/1/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/2/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/2/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/2/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/2/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/2/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/2/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/2/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/3/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/3/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/3/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/3/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/3/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/3/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/3/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/3/1/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/3/1/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/3/1/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/3/1/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/3/1/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/4/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/4/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/4/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/4/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/4/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/4/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/4/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/5/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/5/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/5/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/5/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/5/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/5/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/5/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/6/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/6/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/6/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/6/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/6/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/6/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/6/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/6/1/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/6/1/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/6/1/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/6/1/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/6/1/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/7/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/7/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/7/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/7/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/7/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/7/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/C/7/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/D/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/D/2/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/D/2/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/D/2/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/D/2/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/D/2/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/D/2/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/D/2/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/D/2/1/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/D/2/1/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/D/2/1/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/D/2/1/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/D/2/1/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/D/4/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/D/4/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/D/4/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/D/4/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/D/4/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/D/4/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/D/4/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/D/5/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/D/5/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/D/5/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/D/5/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/D/5/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/D/5/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/D/5/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/D/6/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/D/6/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/D/6/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/D/6/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/D/6/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/D/6/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/D/6/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/D/6/1/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/D/6/1/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/D/6/1/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/D/6/1/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/D/6/1/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/1/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/1/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/1/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/1/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/1/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/1/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/1/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/1/1/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/1/1/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/1/1/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/1/1/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/1/1/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/2/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/2/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/2/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/2/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/2/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/2/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/2/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/3/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/3/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/3/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/3/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/3/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/3/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/3/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/3/1/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/3/1/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/3/1/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/3/1/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/3/1/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/4/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/4/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/4/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/4/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/4/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/4/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/4/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/5/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/5/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/5/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/5/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/5/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/5/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/5/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/6/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/6/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/6/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/6/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/6/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/6/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/6/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/7/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/7/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/7/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/7/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/7/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/7/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/E/7/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/OME/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/OME/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-31-28.685_mkngff/241d67ee-89fc-4419-8702-9bcc706110d8.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream']
      ]::text[][]
    );
commit;

