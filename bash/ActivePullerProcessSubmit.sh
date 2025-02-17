#!/bin/bash

#SBATCH --job-name=ActivePullerProcessing
#SBATCH --output=output/ActivePullerProcessing.txt
#SBATCH --ntasks=1
#SBATCH -p pi_ohern
#SBATCH --time=10:00:00
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=andrewtondata@gmail.com

module load OpenMPI
module load SciPy-bundle/2021.02-fosscuda-2020b

python /home/at965/chromatin/active_puller/ProcPol.py -m /home/at965/chromatin/active_puller/molfiles/N100b0.8r1.txt -x /gpfs/ysm/scratch60/ohern/at965/chromatin/output/N100b0.8r1F0.125s1N1pf0.001BC0.xyz -t 100000 -d 0.001 -k 1000 -b 0 -f 0.0001 -F 0.125 -N 1 -B 0 -M 10
