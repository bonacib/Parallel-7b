#!/bin/bash
#SBATCH -J MPI
#SBATCH -A cs475-575
#SBATCH -p class
#SBATCH -N 4 # number of nodes
#SBATCH -n 4 # number of tasks
#SBATCH --constraint=ib
#SBATCH -o MPI.out
#SBATCH -e MPI.err
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=bonacib@oregonstate.edu
module load openmpi
mpic++ MPI.cpp -o MPI -lm
mpiexec -mca btl self,tcp -np 4 ./MPI