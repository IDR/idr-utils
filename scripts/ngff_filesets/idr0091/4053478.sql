UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/12-38-02.809_mkngff/dd6ac7ed-c97e-4873-8a1b-647bcb4f0bcc.zarr' where image in (select id from Image where fileset = 4053478);

begin;
    select mkngff_fileset(
      4053478,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/12-38-02.809_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/12-38-02.809_mkngff/dd6ac7ed-c97e-4873-8a1b-647bcb4f0bcc.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/dd6ac7ed-c97e-4873-8a1b-647bcb4f0bcc/dd6ac7ed-c97e-4873-8a1b-647bcb4f0bcc.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/12-38-02.809_mkngff/dd6ac7ed-c97e-4873-8a1b-647bcb4f0bcc.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/dd6ac7ed-c97e-4873-8a1b-647bcb4f0bcc/dd6ac7ed-c97e-4873-8a1b-647bcb4f0bcc.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/12-38-02.809_mkngff/dd6ac7ed-c97e-4873-8a1b-647bcb4f0bcc.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/dd6ac7ed-c97e-4873-8a1b-647bcb4f0bcc/dd6ac7ed-c97e-4873-8a1b-647bcb4f0bcc.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/12-38-02.809_mkngff/dd6ac7ed-c97e-4873-8a1b-647bcb4f0bcc.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/dd6ac7ed-c97e-4873-8a1b-647bcb4f0bcc/dd6ac7ed-c97e-4873-8a1b-647bcb4f0bcc.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/12-38-02.809_mkngff/dd6ac7ed-c97e-4873-8a1b-647bcb4f0bcc.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/dd6ac7ed-c97e-4873-8a1b-647bcb4f0bcc/dd6ac7ed-c97e-4873-8a1b-647bcb4f0bcc.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/12-38-02.809_mkngff/dd6ac7ed-c97e-4873-8a1b-647bcb4f0bcc.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/dd6ac7ed-c97e-4873-8a1b-647bcb4f0bcc/dd6ac7ed-c97e-4873-8a1b-647bcb4f0bcc.zarr/3/.zarray']
      ]::text[][]
    );
commit;

