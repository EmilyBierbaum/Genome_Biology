#!/bin/bash
#
#SBATCH --partition=normal
#SBATCH --ntasks=1
#SBATCH --mem 16G
#SBATCH --output=C61_spades_%J_stdout.txt
#SBATCH --error=C61_spades_%J_stderr.txt
#SBATCH --job-name=C61_spades
# 

bash /scratch/biol726301/BIOL7263_Genomics/Eurycea_fastq/Trim_outputs/C61_RNA_spades.sh