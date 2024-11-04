#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=4
#SBATCH --mem 16G
#SBATCH --output=pseud_bwa_%J_stdout.txt
#SBATCH --error=pseud_bwa_%J_stderr.txt
#SBATCH --job-name=pseud_bwa
# 

bash /home/biol726301/BIOL7263_Genomics/scripts/pseudomonas/bwa/pseu_bwa_mem.sh