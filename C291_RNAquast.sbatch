#!/bin/bash
#
#SBATCH --partition=debug
#SBATCH --ntasks=1
#SBATCH --mem 16G
#SBATCH --output=C291_quast%J_stdout.txt
#SBATCH --error=C291_quast%J_stderr.txt
#SBATCH --job-name=C291_quast
# 

bash /home/biol726301/BIOL7263_Genomics/Eurycea_scripts/assembly/C291_RNAquast.sh