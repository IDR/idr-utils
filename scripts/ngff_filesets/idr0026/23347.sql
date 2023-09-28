UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/12/23-49-43.869_mkngff/307d7445-fe54-4fe0-b09b-6070066dd73a.zarr/OME' where image in (select id from Image where fileset = 23347);

begin;
    select mkngff_fileset(
      23347,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/12/23-49-43.869_mkngff/',
      array[
          ['demo_2/2017-04/12/23-49-43.869_mkngff/307d7445-fe54-4fe0-b09b-6070066dd73a.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/12/23-49-43.869_mkngff/307d7445-fe54-4fe0-b09b-6070066dd73a.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/12/23-49-43.869_mkngff/307d7445-fe54-4fe0-b09b-6070066dd73a.zarr/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/12/23-49-43.869_mkngff/307d7445-fe54-4fe0-b09b-6070066dd73a.zarr/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/12/23-49-43.869_mkngff/307d7445-fe54-4fe0-b09b-6070066dd73a.zarr/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/12/23-49-43.869_mkngff/307d7445-fe54-4fe0-b09b-6070066dd73a.zarr/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/12/23-49-43.869_mkngff/307d7445-fe54-4fe0-b09b-6070066dd73a.zarr/OME/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/12/23-49-43.869_mkngff/307d7445-fe54-4fe0-b09b-6070066dd73a.zarr/OME/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/12/23-49-43.869_mkngff/307d7445-fe54-4fe0-b09b-6070066dd73a.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream']
      ]::text[][]
    );
commit;

