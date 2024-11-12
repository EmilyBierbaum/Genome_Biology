#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --mem 24G
#SBATCH --output=kallquant_%J_stdout.txt
#SBATCH --error=kallquant_%J_stderr.txt
#SBATCH --job-name=kallquant
#SBATCH --array=1-7
# 

bash kallisto_quant.sh $(sed -n "${SLURM_ARRAY_TASK_ID}p" kallisto_quant.args)