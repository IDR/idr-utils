## Codon scripts

This folder contains a series of utility scripts expected to
be used on the Codon SLURM cluster at the European
Bioinformatics Institute (EBI) for managing the IDR data flow
between the different storages

-   [transfer_to_bioimage.sh](transfer_to_bioimage.sh): script
    to launch a SLURM job copying the data from the private data
    services onto NFS bioimage

-   [transfer_to_public.sh](transfer_to_public.sh): script
    to launch a SLURM job copying the data from NFS bioimage
    onto NFS the public data services
