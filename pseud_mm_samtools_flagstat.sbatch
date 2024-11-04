#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=4
#SBATCH --mem 16G
#SBATCH --output=pseudmm_samtools_flagstat_%J_stdout.txt
#SBATCH --error=pseudmm_samtools_flagstat_%J_stderr.txt
#SBATCH --job-name=pseudmm_samtools_flagstat
# 

bash /home/biol726301/BIOL7263_Genomics/scripts/pseudomonas/minimap/pseud_mm_samtools_flagstat.sh