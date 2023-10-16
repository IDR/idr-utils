UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/06-47-39.547_mkngff/e255c586-cbe2-469c-a89e-efac0ca8aa7c.zarr' where image in (select id from Image where fileset = 4053386);

begin;
    select mkngff_fileset(
      4053386,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/06-47-39.547_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/06-47-39.547_mkngff/e255c586-cbe2-469c-a89e-efac0ca8aa7c.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e255c586-cbe2-469c-a89e-efac0ca8aa7c/e255c586-cbe2-469c-a89e-efac0ca8aa7c.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/06-47-39.547_mkngff/e255c586-cbe2-469c-a89e-efac0ca8aa7c.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e255c586-cbe2-469c-a89e-efac0ca8aa7c/e255c586-cbe2-469c-a89e-efac0ca8aa7c.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/06-47-39.547_mkngff/e255c586-cbe2-469c-a89e-efac0ca8aa7c.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e255c586-cbe2-469c-a89e-efac0ca8aa7c/e255c586-cbe2-469c-a89e-efac0ca8aa7c.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/06-47-39.547_mkngff/e255c586-cbe2-469c-a89e-efac0ca8aa7c.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e255c586-cbe2-469c-a89e-efac0ca8aa7c/e255c586-cbe2-469c-a89e-efac0ca8aa7c.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/06-47-39.547_mkngff/e255c586-cbe2-469c-a89e-efac0ca8aa7c.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e255c586-cbe2-469c-a89e-efac0ca8aa7c/e255c586-cbe2-469c-a89e-efac0ca8aa7c.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/03/06-47-39.547_mkngff/e255c586-cbe2-469c-a89e-efac0ca8aa7c.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/e255c586-cbe2-469c-a89e-efac0ca8aa7c/e255c586-cbe2-469c-a89e-efac0ca8aa7c.zarr/3/.zarray']
      ]::text[][]
    );
commit;

