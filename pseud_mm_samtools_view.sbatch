#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --mem 16G
#SBATCH --output=pseudmm_samtools_view_%J_stdout.txt
#SBATCH --error=pseudmm_samtools_view_%J_stderr.txt
#SBATCH --job-name=pseudomm_samtools_view
# 

bash /home/biol726301/BIOL7263_Genomics/scripts/pseudomonas/minimap/pseud_mm_samtools_view.sh