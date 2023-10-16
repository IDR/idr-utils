UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/17-11-44.019_mkngff/b80ac5e8-ff4d-4235-aaab-4adfeec0db48.zarr' where image in (select id from Image where fileset = 4053168);

begin;
    select mkngff_fileset(
      4053168,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/17-11-44.019_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/17-11-44.019_mkngff/b80ac5e8-ff4d-4235-aaab-4adfeec0db48.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b80ac5e8-ff4d-4235-aaab-4adfeec0db48/b80ac5e8-ff4d-4235-aaab-4adfeec0db48.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/17-11-44.019_mkngff/b80ac5e8-ff4d-4235-aaab-4adfeec0db48.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b80ac5e8-ff4d-4235-aaab-4adfeec0db48/b80ac5e8-ff4d-4235-aaab-4adfeec0db48.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/17-11-44.019_mkngff/b80ac5e8-ff4d-4235-aaab-4adfeec0db48.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b80ac5e8-ff4d-4235-aaab-4adfeec0db48/b80ac5e8-ff4d-4235-aaab-4adfeec0db48.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/17-11-44.019_mkngff/b80ac5e8-ff4d-4235-aaab-4adfeec0db48.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b80ac5e8-ff4d-4235-aaab-4adfeec0db48/b80ac5e8-ff4d-4235-aaab-4adfeec0db48.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/17-11-44.019_mkngff/b80ac5e8-ff4d-4235-aaab-4adfeec0db48.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b80ac5e8-ff4d-4235-aaab-4adfeec0db48/b80ac5e8-ff4d-4235-aaab-4adfeec0db48.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-21/2020-10/02/17-11-44.019_mkngff/b80ac5e8-ff4d-4235-aaab-4adfeec0db48.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/b80ac5e8-ff4d-4235-aaab-4adfeec0db48/b80ac5e8-ff4d-4235-aaab-4adfeec0db48.zarr/3/.zarray']
      ]::text[][]
    );
commit;

