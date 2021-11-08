#!/bin/bash

# Submit this script with: sbatch <this-filename>

#SBATCH --time=24:00:00   # walltime
#SBATCH --ntasks=1   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH --cpus-per-task=1	# number of processors per task
#SBATCH -J "rpllfp"   # job name

## /SBATCH -p general # partition (queue)
<<<<<<< HEAD
#SBATCH -o rsllfp-slurm.%N.%j.out # STDOUT
#SBATCH -e rsllfp-slurm.%N.%j.err # STDERR
=======
#SBATCH -o rpllfp-slurm.%N.%j.out # STDOUT
#SBATCH -e rpllfp-slurm.%N.%j.err # STDERR
>>>>>>> upstream/main

# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE
python -u -c "import PyHipp as pyh; \
import time; \
pyh.RPLLFP(saveLevel=1); \
print(time.localtime());"
<<<<<<< HEAD

=======
>>>>>>> upstream/main
