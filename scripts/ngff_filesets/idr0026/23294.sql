UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/12/18-10-19.077_mkngff/b1c8062e-8e32-414c-8b99-df4a27d09abf.zarr/OME' where image in (select id from Image where fileset = 23294);

begin;
    select mkngff_fileset(
      23294,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/12/18-10-19.077_mkngff/',
      array[
          ['demo_2/2017-04/12/18-10-19.077_mkngff/b1c8062e-8e32-414c-8b99-df4a27d09abf.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/12/18-10-19.077_mkngff/b1c8062e-8e32-414c-8b99-df4a27d09abf.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/12/18-10-19.077_mkngff/b1c8062e-8e32-414c-8b99-df4a27d09abf.zarr/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/12/18-10-19.077_mkngff/b1c8062e-8e32-414c-8b99-df4a27d09abf.zarr/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/12/18-10-19.077_mkngff/b1c8062e-8e32-414c-8b99-df4a27d09abf.zarr/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/12/18-10-19.077_mkngff/b1c8062e-8e32-414c-8b99-df4a27d09abf.zarr/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/12/18-10-19.077_mkngff/b1c8062e-8e32-414c-8b99-df4a27d09abf.zarr/OME/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/12/18-10-19.077_mkngff/b1c8062e-8e32-414c-8b99-df4a27d09abf.zarr/OME/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/12/18-10-19.077_mkngff/b1c8062e-8e32-414c-8b99-df4a27d09abf.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream']
      ]::text[][]
    );
commit;

