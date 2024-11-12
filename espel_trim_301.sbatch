#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=4
#SBATCH --mem 8G
#SBATCH --output=Espel_301_trim_%J_stdout.txt
#SBATCH --error=Espel_301_trim_%J_stderr.txt
#SBATCH --job-name=Espel_301_trim
# 

bash /home/biol726301/BIOL7263_Genomics/Eurycea_scripts/trim/espel_trim_301.sh