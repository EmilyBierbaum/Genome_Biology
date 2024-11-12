#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem 16G
#SBATCH --output=blastx_C291_%J_stdout.txt
#SBATCH --error=blastx_C291_%J_stderr.txt
#SBATCH --job-name=blastx_C291
# 

bash diamond_blastx_C291.sh
