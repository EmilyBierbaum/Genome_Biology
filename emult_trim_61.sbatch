#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=4
#SBATCH --mem 8G
#SBATCH --output=Emult_61_trim_%J_stdout.txt
#SBATCH --error=Emult_61_trim_%J_stderr.txt
#SBATCH --job-name=Emult_61_trim
# 

bash /home/biol726301/BIOL7263_Genomics/Eurycea_scripts/trim/emult_trim_61.sh