# !/bin/bash
# Submit a SLURM job to transfer data from NFS bioimage onto the public data services
#
# Usage: ./transfer_to_public.sh <folder>
#
# <folder> should be an existing subfolder of /nfs/ebi/bioimage/drop/
#
# The script must be executed on the EBI Codon SLURM cluster after becoming
# the idr-virtual user. 
#
# In most cases, this script can be used for an entire IDR study e.g.
# ./transfer_to_public.sh idr0088-cox-phenomicprofiling
#
# For larger studies, the script also supports partial transfer of subfolders e.g.
# ./transfer_to_public.sh idr0043-uhlen-humanproteinatlas/20181112-ftp
#
# The data is first copied in parallel using mpirun  then the permissions are
# adjusted recursively for all files and folders. The stdout and stderr will
# be stored in local files named after the targer folder
sbatch <<EOT
#!/usr/bin/env bash

#SBATCH --job-name $1              # Job name
#SBATCH --output "$1_out.%J"       # Output file name in which %J is replaced by the job ID
#SBATCH --error "$1_err.%J"        # Error file name in which %J is replaced by the job ID
#SBATCH --time 48:00:00            # Wall-clock time (hrs:mins).
#SBATCH --partition=datamover      # Data mover queue
#SBATCH --nodes 1                  # Number of tasks
#SBATCH --ntasks=8                 # Number of servers
#SBATCH --mem=16G                  # Total RAM memory reservation

# Purge all modules, just in case
module purge

# Load necessary modules
module load openmpi/4.1.5
module load mpifileutils/0.11.1

# Run the dsync script
mpirun -np 8 dsync -v --progress 1 /nfs/ebi/bioimage/drop/$1/ /nfs/ftp/public/databases/IDR/$1/
find /nfs/ftp/public/databases/IDR/$1/ -type f -exec chmod 644 {} \;
find /nfs/ftp/public/databases/IDR/$1/ -type d -exec chmod 755 {} \;
EOT
