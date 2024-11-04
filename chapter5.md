## Genomic Adventure Time
## Chapter Five... the FINAL chapter
#### Task 1 introduced us to purpose of this chapter (hybrid assemblies), comparing Illumina and PacBio datasets to assemble a species of Pseudomonas
- No sbatch or sh files were used

#### Task 2 we used the QC function to check the quality of the fastq files
- [pseudomonas fastqc sbatch](pseudomonas_fastq.sbatch)
- [pseudomonas fastqc sh](pseudomonas_fastqc.sh)

#### Task 3 we trimed the Illumina short-reads
- [pseudomonas trim sbatch](pseudomonas_trim.sbatch)
- [pseudomonas trim sh](pseudomonas_trim.sh)

#### Task 4 we set up an assembly for the short-read Illumina data
- [pseudomonas short assembly sbatch](pseud_short_assembly.sbatch)
- [pseudomonas short assembly sh](pseud_short_assembly.sh)
- [pseudomonas quast sbatch](pseud_short_quast.sbatch)
- [pseudomonas quast sh](pseud_short_quast.sh)
    - [Quast report output](report.txt)
 
#### Task 5 we created a hybrid assembly that included the longer PacBio data
- [pseudomonas long assembly sbatch](pseud_long_assembly.sbatch)
- [pseudomonas long assembly sh](pseud_long_assembly.sh)
- [pseudomonas quast sbatch](pseud_long_quast.sbatch)
- [pseudomonas quast sbatch](pseud_long_quast.sh)
    - [Quast report output](report.txt)
     
#### Task 6 we aligned the original reads back to the reference assembly
### ILLUMINA SHORT-READS
- [pseudomonas BWA index sbatch](pseud_bwa_index.sbatch)
- [pseudomonas BWA index sh](pseud_bwa_index.sh)
- [pseudomonas BWA mem sbatch](pseud_bwa_mem.sbatch)
- [pseudomonas BWA mem sh](pseud_bwa_mem.sh)
- [pseudomonas samtools view sbatch](pseud_samtools_view.sbatch)
- [pseudomonas samtools view sh](pseud_samtools_view.sh)
- [pseudomonas samtools sort sbatch](pseud_samtools_sort.sbatch)
- [pseudomonas samtools sort sh](pseud_samtools_sort.sh)
- [pseudomonas samtools flagstat sbatch](pseud_samtools_flagstat.sbatch)
- [pseudomonas samtools flagstat sh](pseud_samtools_flagstat.sh)
   - [Pseudo Illumina sorted stats](pseudo_illumina_sorted.stat)

#### Task 6 continued where we map our PacBio data to the assembly with the tool minimap2
### PACBIO LONG-READS
- [pseudomonas minimap2 sbatch](minimap_pseud.sbatch)
- [pseudomonas minimap2 sh](minimap_pseud.sh)
- [pseudomonas samtools view sbatch](pseud_mm_samtools_view.sbatch)
- [pseudomonas samtools view mem sh](pseud_mm_samtools_view.sh)
- [pseudomonas samtools sort sbatch](pseud_mm_samtools_sort.sbatch)
- [pseudomonas samtools sort sh](pseud_mm_samtools_sort.sh)
- [pseudomonas samtools index sbatch](pseud_mm_samtools_index.sbatch)
- [pseudomonas samtools index sh](pseud_mm_samtools_index.sh)
- [pseudomonas samtools flagstat sbatch](pseud_mm_samtools_flagstat.sbatch)
- [pseudomonas samtools flagstat sh](pseud_mm_samtools_flagstat.sh)
   - [Pseudo PacBio sorted stats](pseudo_pacbio_sorted.stat)
