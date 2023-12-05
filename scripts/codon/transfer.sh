# !/bin/bash
# Submit a SLURM job to transfer data from NFS bioimage onto the public storage area
#
# Usage: ./transfer.sh <source_folder> <target_folder>
#
# source_folder and target_folder are subfolders of /nfs/ebi/bioimage/drop/
# and /nfs/ftp/public/databases/IDR/ respectively
#
# The script must be executed on the EBI Codon SLURM cluster after becoming
# the idr-virtual user. 
#
# In most cases, the arguments should be identical and correspond to an
# entire IDR study e.g.
# ./transfer.sh idr0088-cox-phenomicprofiling idr0088-cox-phenomicprofiling
#
# The transfer also supports partial transfer of subfolders e.g.
# ./transfer.sh idr0043-uhlen-humanproteinatlas/20181112-ftp idr0043-uhlen-humanproteinatlas/20181112-ftp
#
# The data is first copied in parallel using mpirun  then the permissions are
# adjusted recursively for all files and folders. The stdout and stderr will
# be stored in local files named after the targer folder
sbatch <<EOT
#!/usr/bin/env bash

#SBATCH --job-name $2              # Job name
#SBATCH --output "$2_out.%J"       # Output file name in which %J is replaced by the job ID
#SBATCH --error "$2_err.%J"        # Error file name in which %J is replaced by the job ID
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
mpirun -np 8 dsync -v --progress 1 /nfs/ebi/bioimage/drop/$1/ /nfs/ftp/public/databases/IDR/$2/
find /nfs/ftp/public/databases/IDR/$2/ -type f -exec chmod 644 {} \;
find /nfs/ftp/public/databases/IDR/$2/ -type d -exec chmod 755 {} \;
EOT