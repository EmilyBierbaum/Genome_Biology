#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem 16G
#SBATCH --output=blastx_Emul_%J_stdout.txt
#SBATCH --error=blastx_Emul_%J_stderr.txt
#SBATCH --job-name=blastx_Emul
# 

bash diamond_blastx_C61.sh
