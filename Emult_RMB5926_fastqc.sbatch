#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --mem 8G
#SBATCH --output=Emult_5926_fastqc_%J_stdout.txt
#SBATCH --error=Emult_5926_fastqc_%J_stderr.txt
#SBATCH --job-name=Emult_5926_fastqc
# 

bash /home/biol726301/BIOL7263_Genomics/Eurycea_scripts/fastqc/Emult_RMB5926_fastqc.sh