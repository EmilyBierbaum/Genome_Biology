#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --mem 16G
#SBATCH --output=ecoli_filt_%J_stdout.txt
#SBATCH --error=ecoli_filt_%J_stderr.txt
#SBATCH --job-name=ecoli_filt
# 

bash /home/biol726301/BIOL7263_Genomics/scripts/bcf/ecoli_filt.sh