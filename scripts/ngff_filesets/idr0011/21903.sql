UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/OME' where image in (select id from Image where fileset = 21903);

begin;
    select mkngff_fileset(
      21903,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2016-07/28/20-43-24.520_mkngff/',
      array[
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/A/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/A/2/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/A/2/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/A/2/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/A/2/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/A/2/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/A/2/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/A/2/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/A/2/1/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/A/2/1/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/A/2/1/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/A/2/1/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/A/2/1/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/A/7/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/A/7/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/A/7/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/A/7/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/A/7/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/A/7/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/A/7/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/A/7/1/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/A/7/1/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/A/7/1/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/A/7/1/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/A/7/1/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/B/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/B/1/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/B/1/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/B/1/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/B/1/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/B/1/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/B/1/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/B/1/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/B/1/1/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/B/1/1/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/B/1/1/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/B/1/1/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/B/1/1/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/B/2/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/B/2/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/B/2/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/B/2/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/B/2/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/B/2/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/B/2/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/B/2/1/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/B/2/1/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/B/2/1/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/B/2/1/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/B/2/1/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/C/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/C/1/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/C/1/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/C/1/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/C/1/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/C/1/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/C/1/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/C/1/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/C/2/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/C/2/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/C/2/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/C/2/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/C/2/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/C/2/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/C/2/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/D/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/D/1/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/D/1/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/D/1/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/D/1/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/D/1/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/D/1/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/D/1/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/D/1/1/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/D/1/1/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/D/1/1/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/D/1/1/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/D/1/1/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/D/2/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/D/2/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/D/2/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/D/2/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/D/2/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/D/2/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/D/2/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/1/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/1/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/1/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/1/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/1/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/1/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/1/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/2/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/2/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/2/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/2/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/2/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/2/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/2/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/3/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/3/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/3/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/3/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/3/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/3/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/3/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/3/1/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/3/1/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/3/1/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/3/1/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/3/1/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/4/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/4/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/4/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/4/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/4/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/4/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/4/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/5/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/5/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/5/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/5/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/5/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/5/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/5/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/5/1/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/5/1/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/5/1/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/5/1/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/5/1/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/6/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/6/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/6/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/6/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/6/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/6/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/6/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/6/1/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/6/1/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/6/1/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/6/1/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/E/6/1/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/1/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/1/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/1/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/1/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/1/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/1/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/1/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/1/1/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/1/1/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/1/1/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/1/1/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/1/1/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/3/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/3/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/3/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/3/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/3/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/3/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/3/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/6/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/6/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/6/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/6/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/6/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/6/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/6/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/6/1/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/6/1/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/6/1/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/6/1/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/6/1/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/7/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/7/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/7/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/7/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/7/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/7/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/7/0/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/7/1/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/7/1/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/7/1/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/7/1/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/F/7/1/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/OME/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/OME/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2016-07/28/20-43-24.520_mkngff/acbd5798-5053-4f88-849c-a83d88792385.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream']
      ]::text[][]
    );
commit;

