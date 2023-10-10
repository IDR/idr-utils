UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/OME' where image in (select id from Image where fileset = 21935);

begin;
    select mkngff_fileset(
      21935,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2016-07/28/21-39-38.547_mkngff/',
      array[
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/A/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/A/2/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/A/2/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/A/2/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/A/2/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/A/2/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/A/2/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/A/2/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/A/3/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/A/3/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/A/3/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/A/3/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/A/3/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/A/3/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/A/3/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/A/6/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/A/6/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/A/6/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/A/6/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/A/6/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/A/6/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/A/6/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/A/7/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/A/7/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/A/7/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/A/7/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/A/7/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/A/7/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/A/7/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/B/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/B/3/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/B/3/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/B/3/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/B/3/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/B/3/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/B/3/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/B/3/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/B/6/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/B/6/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/B/6/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/B/6/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/B/6/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/B/6/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/B/6/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/C/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/C/2/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/C/2/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/C/2/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/C/2/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/C/2/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/C/2/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/C/2/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/C/5/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/C/5/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/C/5/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/C/5/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/C/5/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/C/5/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/C/5/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/D/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/D/2/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/D/2/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/D/2/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/D/2/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/D/2/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/D/2/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/D/2/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/D/3/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/D/3/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/D/3/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/D/3/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/D/3/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/D/3/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/D/3/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/D/7/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/D/7/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/D/7/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/D/7/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/D/7/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/D/7/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/D/7/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/E/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/E/3/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/E/3/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/E/3/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/E/3/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/E/3/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/E/3/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/E/3/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/E/6/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/E/6/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/E/6/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/E/6/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/E/6/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/E/6/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/E/6/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/2/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/2/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/2/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/2/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/2/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/2/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/2/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/3/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/3/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/3/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/3/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/3/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/3/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/3/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/4/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/4/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/4/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/4/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/4/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/4/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/4/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/5/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/5/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/5/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/5/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/5/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/5/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/5/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/6/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/6/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/6/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/6/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/6/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/6/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/6/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/7/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/7/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/7/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/7/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/7/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/7/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/F/7/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/OME/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/OME/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/21-39-38.547_mkngff/1217032d-8a87-4bc7-8d22-665791732ec6.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream']
      ]::text[][]
    );
commit;
