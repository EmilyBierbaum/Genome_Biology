#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --mem 30G
#SBATCH --output=blast301_%J_stdout.txt
#SBATCH --error=blast301_%J_stderr.txt
#SBATCH --job-name=blast301
# 

bash blastn_C301.sh
