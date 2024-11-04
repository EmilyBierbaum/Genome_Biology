#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --mem 16G
#SBATCH --output=blastn_%J_stdout.txt
#SBATCH --error=blastn_%J_stderr.txt
#SBATCH --job-name=blastn
# 

bash /home/biol726301/BIOL7263_Genomics/scripts/assembly/blastn.sh