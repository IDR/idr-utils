UPDATE pixels SET name = 'METADATA.ome.xml', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-20/2018-11/26/10-44-00.214_mkngff/863bc512-1911-4ba3-838c-8ed044ce656c.zarr/OME' where image in (select id from Image where fileset = 604308);

begin;
    select mkngff_fileset(
      604308,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-20/2018-11/26/10-44-00.214_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2018-11/26/10-44-00.214_mkngff/863bc512-1911-4ba3-838c-8ed044ce656c.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/863bc512-1911-4ba3-838c-8ed044ce656c/863bc512-1911-4ba3-838c-8ed044ce656c.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2018-11/26/10-44-00.214_mkngff/863bc512-1911-4ba3-838c-8ed044ce656c.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/863bc512-1911-4ba3-838c-8ed044ce656c/863bc512-1911-4ba3-838c-8ed044ce656c.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2018-11/26/10-44-00.214_mkngff/863bc512-1911-4ba3-838c-8ed044ce656c.zarr/0/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/863bc512-1911-4ba3-838c-8ed044ce656c/863bc512-1911-4ba3-838c-8ed044ce656c.zarr/0/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2018-11/26/10-44-00.214_mkngff/863bc512-1911-4ba3-838c-8ed044ce656c.zarr/0/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/863bc512-1911-4ba3-838c-8ed044ce656c/863bc512-1911-4ba3-838c-8ed044ce656c.zarr/0/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2018-11/26/10-44-00.214_mkngff/863bc512-1911-4ba3-838c-8ed044ce656c.zarr/0/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/863bc512-1911-4ba3-838c-8ed044ce656c/863bc512-1911-4ba3-838c-8ed044ce656c.zarr/0/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2018-11/26/10-44-00.214_mkngff/863bc512-1911-4ba3-838c-8ed044ce656c.zarr/0/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/863bc512-1911-4ba3-838c-8ed044ce656c/863bc512-1911-4ba3-838c-8ed044ce656c.zarr/0/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2018-11/26/10-44-00.214_mkngff/863bc512-1911-4ba3-838c-8ed044ce656c.zarr/OME/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/863bc512-1911-4ba3-838c-8ed044ce656c/863bc512-1911-4ba3-838c-8ed044ce656c.zarr/OME/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2018-11/26/10-44-00.214_mkngff/863bc512-1911-4ba3-838c-8ed044ce656c.zarr/OME/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/863bc512-1911-4ba3-838c-8ed044ce656c/863bc512-1911-4ba3-838c-8ed044ce656c.zarr/OME/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-20/2018-11/26/10-44-00.214_mkngff/863bc512-1911-4ba3-838c-8ed044ce656c.zarr/OME/', 'METADATA.ome.xml', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD815/863bc512-1911-4ba3-838c-8ed044ce656c/863bc512-1911-4ba3-838c-8ed044ce656c.zarr/OME/METADATA.ome.xml']
      ]::text[][]
    );
commit;

