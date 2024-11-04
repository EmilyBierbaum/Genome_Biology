#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --mem 16G
#SBATCH --output=pseu_index_%J_stdout.txt
#SBATCH --error=pseu_index%J_stderr.txt
#SBATCH --job-name=pseu_index
# 

bash /home/biol726301/BIOL7263_Genomics/scripts/pseudomonas/bwa/pseud_bwa_index.sh