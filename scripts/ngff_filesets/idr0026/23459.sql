UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/13/13-17-43.402_mkngff/b5e62a2f-d055-4559-b84b-ebc908b5d1a8.zarr/OME' where image in (select id from Image where fileset = 23459);

begin;
    select mkngff_fileset(
      23459,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/13/13-17-43.402_mkngff/',
      array[
          ['demo_2/2017-04/13/13-17-43.402_mkngff/b5e62a2f-d055-4559-b84b-ebc908b5d1a8.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/13/13-17-43.402_mkngff/b5e62a2f-d055-4559-b84b-ebc908b5d1a8.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/13/13-17-43.402_mkngff/b5e62a2f-d055-4559-b84b-ebc908b5d1a8.zarr/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/13/13-17-43.402_mkngff/b5e62a2f-d055-4559-b84b-ebc908b5d1a8.zarr/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/13/13-17-43.402_mkngff/b5e62a2f-d055-4559-b84b-ebc908b5d1a8.zarr/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/13/13-17-43.402_mkngff/b5e62a2f-d055-4559-b84b-ebc908b5d1a8.zarr/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/13/13-17-43.402_mkngff/b5e62a2f-d055-4559-b84b-ebc908b5d1a8.zarr/OME/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/13/13-17-43.402_mkngff/b5e62a2f-d055-4559-b84b-ebc908b5d1a8.zarr/OME/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/13/13-17-43.402_mkngff/b5e62a2f-d055-4559-b84b-ebc908b5d1a8.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream']
      ]::text[][]
    );
commit;

