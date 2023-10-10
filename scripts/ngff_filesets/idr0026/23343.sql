UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/12/23-11-47.035_mkngff/9ee838d9-c29d-489b-a28a-4f028fb95ad8.zarr/OME' where image in (select id from Image where fileset = 23343);

begin;
    select mkngff_fileset(
      23343,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/12/23-11-47.035_mkngff/',
      array[
          ['demo_2/2017-04/12/23-11-47.035_mkngff/9ee838d9-c29d-489b-a28a-4f028fb95ad8.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/12/23-11-47.035_mkngff/9ee838d9-c29d-489b-a28a-4f028fb95ad8.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/12/23-11-47.035_mkngff/9ee838d9-c29d-489b-a28a-4f028fb95ad8.zarr/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/12/23-11-47.035_mkngff/9ee838d9-c29d-489b-a28a-4f028fb95ad8.zarr/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/12/23-11-47.035_mkngff/9ee838d9-c29d-489b-a28a-4f028fb95ad8.zarr/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/12/23-11-47.035_mkngff/9ee838d9-c29d-489b-a28a-4f028fb95ad8.zarr/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/12/23-11-47.035_mkngff/9ee838d9-c29d-489b-a28a-4f028fb95ad8.zarr/OME/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/12/23-11-47.035_mkngff/9ee838d9-c29d-489b-a28a-4f028fb95ad8.zarr/OME/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/12/23-11-47.035_mkngff/9ee838d9-c29d-489b-a28a-4f028fb95ad8.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream']
      ]::text[][]
    );
commit;
