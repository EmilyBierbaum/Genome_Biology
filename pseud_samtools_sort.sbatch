#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=4
#SBATCH --mem 16G
#SBATCH --output=pseud_samtools_sort_%J_stdout.txt
#SBATCH --error=pseud_samtools_sort_%J_stderr.txt
#SBATCH --job-name=pseud_samtools_sort
# 

bash /home/biol726301/BIOL7263_Genomics/scripts/pseudomonas/bwa/pseud_samtools_sort.sh