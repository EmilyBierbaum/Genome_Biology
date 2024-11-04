#!/bin/bash
#
#SBATCH --partition=debug
#SBATCH --ntasks=1
#SBATCH --mem 16G
#SBATCH --output=pseu_long_quast%J_stdout.txt
#SBATCH --error=pseu_long_quast%J_stderr.txt
#SBATCH --job-name=pseu_long_quast
# 

bash /home/biol726301/BIOL7263_Genomics/scripts/pseudomonas/assembly/pseud_long_quast.sh