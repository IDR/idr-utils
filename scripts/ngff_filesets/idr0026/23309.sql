UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/12/20-02-42.014_mkngff/2f60aaab-5bf2-4c4b-b4b3-e166e9fc5f16.zarr/OME' where image in (select id from Image where fileset = 23309);

begin;
    select mkngff_fileset(
      23309,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/12/20-02-42.014_mkngff/',
      array[
          ['demo_2/2017-04/12/20-02-42.014_mkngff/2f60aaab-5bf2-4c4b-b4b3-e166e9fc5f16.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/12/20-02-42.014_mkngff/2f60aaab-5bf2-4c4b-b4b3-e166e9fc5f16.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/12/20-02-42.014_mkngff/2f60aaab-5bf2-4c4b-b4b3-e166e9fc5f16.zarr/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/12/20-02-42.014_mkngff/2f60aaab-5bf2-4c4b-b4b3-e166e9fc5f16.zarr/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/12/20-02-42.014_mkngff/2f60aaab-5bf2-4c4b-b4b3-e166e9fc5f16.zarr/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/12/20-02-42.014_mkngff/2f60aaab-5bf2-4c4b-b4b3-e166e9fc5f16.zarr/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/12/20-02-42.014_mkngff/2f60aaab-5bf2-4c4b-b4b3-e166e9fc5f16.zarr/OME/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/12/20-02-42.014_mkngff/2f60aaab-5bf2-4c4b-b4b3-e166e9fc5f16.zarr/OME/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/12/20-02-42.014_mkngff/2f60aaab-5bf2-4c4b-b4b3-e166e9fc5f16.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream']
      ]::text[][]
    );
commit;

