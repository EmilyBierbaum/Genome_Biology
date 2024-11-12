#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --mem 8G
#SBATCH --output=kallisto_index_%J_stdout.txt
#SBATCH --error=kallisto_index_%J_stderr.txt
#SBATCH --job-name=kallisto_index
# 

bash /home/biol726301/BIOL7263_Genomics/Eurycea_scripts/RNA_seq_Eurycea/kallisto_index.sh