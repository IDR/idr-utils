UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/16-06-20.949_mkngff/043c117e-1b42-4691-88e6-87f0bd67917d.zarr' where image in (select id from Image where fileset = 4053797);

begin;
    select mkngff_fileset(
      4053797,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/16-06-20.949_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/16-06-20.949_mkngff/043c117e-1b42-4691-88e6-87f0bd67917d.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/043c117e-1b42-4691-88e6-87f0bd67917d/043c117e-1b42-4691-88e6-87f0bd67917d.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/16-06-20.949_mkngff/043c117e-1b42-4691-88e6-87f0bd67917d.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/043c117e-1b42-4691-88e6-87f0bd67917d/043c117e-1b42-4691-88e6-87f0bd67917d.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/16-06-20.949_mkngff/043c117e-1b42-4691-88e6-87f0bd67917d.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/043c117e-1b42-4691-88e6-87f0bd67917d/043c117e-1b42-4691-88e6-87f0bd67917d.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/16-06-20.949_mkngff/043c117e-1b42-4691-88e6-87f0bd67917d.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/043c117e-1b42-4691-88e6-87f0bd67917d/043c117e-1b42-4691-88e6-87f0bd67917d.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/16-06-20.949_mkngff/043c117e-1b42-4691-88e6-87f0bd67917d.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/043c117e-1b42-4691-88e6-87f0bd67917d/043c117e-1b42-4691-88e6-87f0bd67917d.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-12/2020-10/03/16-06-20.949_mkngff/043c117e-1b42-4691-88e6-87f0bd67917d.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/043c117e-1b42-4691-88e6-87f0bd67917d/043c117e-1b42-4691-88e6-87f0bd67917d.zarr/3/.zarray']
      ]::text[][]
    );
commit;

