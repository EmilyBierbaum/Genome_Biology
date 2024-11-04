#!/bin/bash
#
#SBATCH --partition=debug
#SBATCH --ntasks=1
#SBATCH --mem 16G
#SBATCH --output=quast_short_pseu_%J_stdout.txt
#SBATCH --error=quast_short_pseu_%J_stderr.txt
#SBATCH --job-name=quast_short_pseu
# 

bash /home/biol726301/BIOL7263_Genomics/scripts/pseudomonas/assembly/pseud_short_quast.sh