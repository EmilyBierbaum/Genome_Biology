#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --mem 8G
#SBATCH --output=Espel_1181_fastqc_%J_stdout.txt
#SBATCH --error=Espel_1181_fastqc_%J_stderr.txt
#SBATCH --job-name=Espel_1181_fastqc
# 

bash /home/biol726301/BIOL7263_Genomics/Eurycea_scripts/fastqc/Espel_T3_118_1_fastqc.sh