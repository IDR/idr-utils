UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/12/14-16-40.835_mkngff/bd30cdcf-2b4a-482e-bebd-7a3705e9b769.zarr/OME' where image in (select id from Image where fileset = 23255);

begin;
    select mkngff_fileset(
      23255,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/12/14-16-40.835_mkngff/',
      array[
          ['demo_2/2017-04/12/14-16-40.835_mkngff/bd30cdcf-2b4a-482e-bebd-7a3705e9b769.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/12/14-16-40.835_mkngff/bd30cdcf-2b4a-482e-bebd-7a3705e9b769.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/12/14-16-40.835_mkngff/bd30cdcf-2b4a-482e-bebd-7a3705e9b769.zarr/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/12/14-16-40.835_mkngff/bd30cdcf-2b4a-482e-bebd-7a3705e9b769.zarr/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/12/14-16-40.835_mkngff/bd30cdcf-2b4a-482e-bebd-7a3705e9b769.zarr/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/12/14-16-40.835_mkngff/bd30cdcf-2b4a-482e-bebd-7a3705e9b769.zarr/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/12/14-16-40.835_mkngff/bd30cdcf-2b4a-482e-bebd-7a3705e9b769.zarr/OME/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/12/14-16-40.835_mkngff/bd30cdcf-2b4a-482e-bebd-7a3705e9b769.zarr/OME/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/12/14-16-40.835_mkngff/bd30cdcf-2b4a-482e-bebd-7a3705e9b769.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream']
      ]::text[][]
    );
commit;

