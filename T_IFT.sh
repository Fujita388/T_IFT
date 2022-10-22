#!/bin/sh

#SBATCH -p F16cpu
#SBATCH -N 16
#SBATCH -n 128
#SBATCH -c 16
#SBATCH -t 11:00:00
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --mail-user=naofuji.1220@gmail.com

source /home/issp/materiapps/intel/lammps/lammpsvars.sh

python3 generate.py
srun lammps < interface_tension.input