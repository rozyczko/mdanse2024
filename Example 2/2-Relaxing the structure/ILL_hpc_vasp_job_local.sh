#!/bin/bash

#PBS -q q.2010_08
#PBS -N BaTiO3-xHx_relaxation
#PBS -l nodes=1:ppn=08
# if nodes > 1 : FOR THE q.2015_16 queue activate one of the following lines:
#export I_MPI_DEVICE="rdma:ofa-v2-ib0" 
#export I_MPI_DEVICE="rdssm:ofa-v2-ib0"

module load intel/14.0.1
module load intelmpi/4.1.0.024
module load vasp/intelmpi/5.4.1

cd $PBS_O_WORKDIR
ulimit -s unlimited
mpirun vasp_std > vasp_job.log
