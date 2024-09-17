# Genome Biology 
## Fall 2024 Genome Biology seminar

#### My name is Emily Bierbaum, and I am a 5th year PhD student in Dr. Bonett's lab studying the impact of life cycles on salamanders. Check out the lab website below:
[Bonett Lab's Website](https://ronbonett.weebly.com/people.html)
🦎 🐈 🐸

## This is the home for all of my work for my favorite class!
### Day 1
#### We dove into genome and sequencing basics. The scripts are below: 
- [sbatch file](https://github.com/EmilyBierbaum/Genome_Biology/blob/main/test.sbatch)
- [sh file](https://github.com/EmilyBierbaum/Genome_Biology/blob/main/test.sh)


### Genomic Adventure Time
#### We learned more about uploading and managing files on the super computer and activated the class environment via the notorious MAMBA.
#### Task 1 evaluated the quality of Illumina data and created FastQC output reports
- [e.coli fastqc sh](https://github.com/EmilyBierbaum/Genome_Biology/blob/main/ecoli_fastqc.sh)  
- [e.coli sbatch file](https://github.com/EmilyBierbaum/Genome_Biology/blob/main/ecoli_fastqc.sbatch)  
- [Read_1_fastqc_output](read_1_fastqc.html)   
- [Read_2_fastqc_output](read_2_fastqc.html)   

#### Task 2 was for sequence data quality control and adaptor trimming. We filtered low quality reads with Trim Galore!
- [e.coli trim sbatch](ecoli_trim.sbatch) 
- [e.coli sh](ecoli_trim.sh) 

#### Task 3 discussed random sub-sampling and digital normalization via ChatGPT 😉
- No script or sbatch files 

#### Task 4 introduces how to align Illumina data to a reference sequence 
- No script or sbatch files 

#### Task 5 created a reference index. But first, we need to index the genome sequence with BWA! Not feeling confident enough to try minimap2 yet.
- [e.coli index sbatch](ecoli_index.sbatch) 
- [e.coli index sh](ecoli_index.sh)  

#### Task 6 aligned read_1 and read_2 to the reference genome. In the end, we succesfully mapped the reads to the reference genome!
 - [e.coli bwa mem sbatch](ecoli_bwa_mem.sbatch)
 - [ecoli bwa mem sh](ecoli_bwa_mem.sh) 

#### Task 7 manipulated the SAM file and converted it to a BAM file, then we sort the BAM file
- [e.coli samtools sbatch](ecoli_samtools_view.sbatch)
- [e.coli samtools sh](ecoli_samtools_view.sh)
- [e. coli map sort sbatch](ecoli_map_sort.sbatch)
- [e.coli map sort sh](ecoli_map_sort.sh)

#### Task 8 removes PCR duplicates with samtools. We begin by sorting the BAM file by read name then add tags. Then we resort by chromosomal position. Finally we can makr duplicates and remove them.
- [e.coli markdup sbatch](ecoli_markdup.sbatch)
- [ecoli markdup sh](ecoli_markdup.sh)
- [e.coli samstool index sbatch](ecoli_samstool_index.sbatch)
- [e.coli samstool index sh](ecoli_samstool_index.sh)
#### Task 9 maps statistics, and produced an output file. We cleaned up extra files (I entered these directly into the terminal but included them below)
- [e.coli samtools flagstat sbatch](ecoli_samtools_flagstat.sbatch)
- [e.ecoli samtools flagstat sh](ecoli_samtools_flagstat.sh)
- [mapping stats output file](mappingstats.txt)
- [e. cleanup commands](ecoli_rm_files.sh)

#### Task 10 QualiMap

#### Task 11 gives a graphical view of the alignments 

#### Task 12 evaluates SNPs and indels

#### Task 13 identifies SNPs and indels manually

#### Task 14 automates analyses

#### Task 15 locates genes that are missing compared to the reference 

## Project Proposal
[Bierbaum proposal](Proposal.pdf)

#### Duncan and I 🫶
![](Duncan.jpg)
