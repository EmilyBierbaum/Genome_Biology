#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --mem 8G
#SBATCH --output=pseu_fastqc_%J_stdout.txt
#SBATCH --error=pseu_fastqc_%J_stderr.txt
#SBATCH --job-name=pseu_fastqc
# 

bash /home/biol726301/BIOL7263_Genomics/scripts/pseudomonas/unmapped_fastqc.sh