UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/17-06-17.446_mkngff/15bf97e0-1730-45fb-b524-aa4e5822337c.zarr' where image in (select id from Image where fileset = 4053822);

begin;
    select mkngff_fileset(
      4053822,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/17-06-17.446_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/17-06-17.446_mkngff/15bf97e0-1730-45fb-b524-aa4e5822337c.zarr/', '.zattrs', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/15bf97e0-1730-45fb-b524-aa4e5822337c/15bf97e0-1730-45fb-b524-aa4e5822337c.zarr/.zattrs'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/17-06-17.446_mkngff/15bf97e0-1730-45fb-b524-aa4e5822337c.zarr/', '.zgroup', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/15bf97e0-1730-45fb-b524-aa4e5822337c/15bf97e0-1730-45fb-b524-aa4e5822337c.zarr/.zgroup'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/17-06-17.446_mkngff/15bf97e0-1730-45fb-b524-aa4e5822337c.zarr/0/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/15bf97e0-1730-45fb-b524-aa4e5822337c/15bf97e0-1730-45fb-b524-aa4e5822337c.zarr/0/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/17-06-17.446_mkngff/15bf97e0-1730-45fb-b524-aa4e5822337c.zarr/1/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/15bf97e0-1730-45fb-b524-aa4e5822337c/15bf97e0-1730-45fb-b524-aa4e5822337c.zarr/1/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/17-06-17.446_mkngff/15bf97e0-1730-45fb-b524-aa4e5822337c.zarr/2/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/15bf97e0-1730-45fb-b524-aa4e5822337c/15bf97e0-1730-45fb-b524-aa4e5822337c.zarr/2/.zarray'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-2/2020-10/03/17-06-17.446_mkngff/15bf97e0-1730-45fb-b524-aa4e5822337c.zarr/3/', '.zarray', 'application/octet-stream', 'https://uk1s3.embassy.ebi.ac.uk/bia-integrator-data/S-BIAD852/15bf97e0-1730-45fb-b524-aa4e5822337c/15bf97e0-1730-45fb-b524-aa4e5822337c.zarr/3/.zarray']
      ]::text[][]
    );
commit;

