UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/13/03-12-20.542_mkngff/1e0d94df-af47-432e-917f-48687290f336.zarr/OME' where image in (select id from Image where fileset = 23377);

begin;
    select mkngff_fileset(
      23377,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/13/03-12-20.542_mkngff/',
      array[
          ['demo_2/2017-04/13/03-12-20.542_mkngff/1e0d94df-af47-432e-917f-48687290f336.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/13/03-12-20.542_mkngff/1e0d94df-af47-432e-917f-48687290f336.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/13/03-12-20.542_mkngff/1e0d94df-af47-432e-917f-48687290f336.zarr/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/13/03-12-20.542_mkngff/1e0d94df-af47-432e-917f-48687290f336.zarr/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/13/03-12-20.542_mkngff/1e0d94df-af47-432e-917f-48687290f336.zarr/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/13/03-12-20.542_mkngff/1e0d94df-af47-432e-917f-48687290f336.zarr/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/13/03-12-20.542_mkngff/1e0d94df-af47-432e-917f-48687290f336.zarr/OME/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/13/03-12-20.542_mkngff/1e0d94df-af47-432e-917f-48687290f336.zarr/OME/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/13/03-12-20.542_mkngff/1e0d94df-af47-432e-917f-48687290f336.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream']
      ]::text[][]
    );
commit;

