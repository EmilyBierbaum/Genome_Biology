#!/bin/bash
#
#SBATCH --partition=debug
#SBATCH --ntasks=1
#SBATCH --mem 16G
#SBATCH --output=C301_quast%J_stdout.txt
#SBATCH --error=C301_quast%J_stderr.txt
#SBATCH --job-name=C301_quast
# 

bash /home/biol726301/BIOL7263_Genomics/Eurycea_scripts/assembly/C301_RNAquast.sh