#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --mem 8G
#SBATCH --output=C301_index_%J_stdout.txt
#SBATCH --error=C301_index_%J_stderr.txt
#SBATCH --job-name=C301_index
# 

bash /home/biol726301/BIOL7263_Genomics/Eurycea_scripts/RNA_seq_Eurycea/Espel301_kallisto_deep_index.sh