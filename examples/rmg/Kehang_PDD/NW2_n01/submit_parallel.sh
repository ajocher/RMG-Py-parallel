#!/bin/bash
#SBATCH -p debug		# partition (queue)
#SBATCH -J NW2_PDD		# Job name
#SBATCH -o slurm.%N.%j.out	# STDOUT
#SBATCH -e slurm.%N.%j.err	# STDERR

# Request run time on RMG-Server
# Node01-04, 12 cores/node, 2 threads/core, 96 GB/node
# Node05-08, 20 cores/node, 2 threads/core, 128 GB/node

#SBATCH -t 10-24:00:00	# time (D-HH:MM)
#SBATCH -n 24		# number of cores, default is one task per node
#SBATCH -w node01
#SBATCH -N 1  		# number of nodes
##SBATCH --mem=10000	# memory pool for all cores

hosts=$(srun bash -c hostname)

WORKERS=2 	# Should be equal to the number of cores on each machine

source activate rmg_parallel_env
python -m scoop -n $WORKERS --host $hosts -v ../../../../rmg.py input_pdd_pruning.py
# python ../../../rmg.py input.py
source deactivate



