UPDATE pixels SET name = '.zattrs', path = 'demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/02-46-01.706_mkngff/ba7de77d-8f65-4566-97aa-9c866e01d15c.zarr' where image in (select id from Image where fileset = 4053353);

begin;
    select mkngff_fileset(
      4053353,
      'SECRETUUID',
      'cdf35825-def1-4580-8d0b-9c349b8f78d6',
      'demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/02-46-01.706_mkngff/',
      array[
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/02-46-01.706_mkngff/ba7de77d-8f65-4566-97aa-9c866e01d15c.zarr/', '.zattrs', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/02-46-01.706_mkngff/ba7de77d-8f65-4566-97aa-9c866e01d15c.zarr/', '.zgroup', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/02-46-01.706_mkngff/ba7de77d-8f65-4566-97aa-9c866e01d15c.zarr/0/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/02-46-01.706_mkngff/ba7de77d-8f65-4566-97aa-9c866e01d15c.zarr/1/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/02-46-01.706_mkngff/ba7de77d-8f65-4566-97aa-9c866e01d15c.zarr/2/', '.zarray', 'application/octet-stream'],
          ['demo_2/Blitz-0-Ice.ThreadPool.Server-15/2020-10/03/02-46-01.706_mkngff/ba7de77d-8f65-4566-97aa-9c866e01d15c.zarr/3/', '.zarray', 'application/octet-stream']
      ]::text[][]
    );
commit;

