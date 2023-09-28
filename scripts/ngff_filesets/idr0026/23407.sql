UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/2017-04/13/06-02-04.842_mkngff/6d347d8b-5868-48d6-9f4f-a631a820a1de.zarr/OME' where image in (select id from Image where fileset = 23407);

begin;
    select mkngff_fileset(
      23407,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/2017-04/13/06-02-04.842_mkngff/',
      array[
          ['demo_2/2017-04/13/06-02-04.842_mkngff/6d347d8b-5868-48d6-9f4f-a631a820a1de.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/13/06-02-04.842_mkngff/6d347d8b-5868-48d6-9f4f-a631a820a1de.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/13/06-02-04.842_mkngff/6d347d8b-5868-48d6-9f4f-a631a820a1de.zarr/0/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/13/06-02-04.842_mkngff/6d347d8b-5868-48d6-9f4f-a631a820a1de.zarr/0/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/13/06-02-04.842_mkngff/6d347d8b-5868-48d6-9f4f-a631a820a1de.zarr/0/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/13/06-02-04.842_mkngff/6d347d8b-5868-48d6-9f4f-a631a820a1de.zarr/0/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/2017-04/13/06-02-04.842_mkngff/6d347d8b-5868-48d6-9f4f-a631a820a1de.zarr/OME/', '.zattrs', 'application/octet-stream'],
          ['demo_2/2017-04/13/06-02-04.842_mkngff/6d347d8b-5868-48d6-9f4f-a631a820a1de.zarr/OME/', '.zgroup', 'application/octet-stream'],
          ['demo_2/2017-04/13/06-02-04.842_mkngff/6d347d8b-5868-48d6-9f4f-a631a820a1de.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream']
      ]::text[][]
    );
commit;

