#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --mem 24G
#SBATCH --output=kall_quant_%J_stdout.txt
#SBATCH --error=kall_quant_%J_stderr.txt
#SBATCH --job-name=kall_quant
#SBATCH --array=1
# 

bash kallisto_quant_deep_C301.sh $(sed -n "${SLURM_ARRAY_TASK_ID}p" kallisto_quant_deep_C301.args)