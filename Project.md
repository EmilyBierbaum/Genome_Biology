# Emily Bierbaum Transcriptome project
## How does the data from 3' RNA-seq differ from Deep RNA-seq on differential gene expression and gene coverage in *Eurycea spelaea* vs *Eurycea multiplicata*?


## Part 1: 3' RNA-seq 
##### For this data I have 4 larval specimens of *E. spelaea* (Grotto Salamander)
- *E. spelaea* C-29-2
- *E. spelaea* C-116-1
- *E. spelaea* C-116-2
- *E. spelaea* C-117-2

##### and 3 larval specimens of *E. multiplicata* (Many-ribbed Salamander)
- *E. multiplicata* RMB5925
- *E. multiplicata* RMB5926
- *E. multiplicata* RMB5927

#### Task 1: I evaluated the quality of my Illumina data with the fastqc program
##### *E. spelaea*
- [Espel_C-29-2 fastQC sbatch](Espel_C292_fastqc.sbatch)
- [Espel_C-29-2 fastQC sh](Espel_C292_fastqc.sh)
    - [R1 output](Espel_C292_R1_fastqc.html)
    - [R2 output](Espel_C292_R2_fastqc.html)
- [Espel_C-116-1 fastQC sbatch](Espel_C1161_fastqc.sbatch)
- [Espel_C-116-1 fastQC sh](Espel_C1161_fastqc.sh)
    - [R1 output](Espel_C1161_R1_fastqc.html)
    - [R2 output](Espel_C1161_R2_fastqc.html)
- [Espel_C-116-2 fastQC sbatch](Espel_C1162_fastqc.sbatch)
- [Espel_C-116-2 fastQC sh](Espel_C1162_fastqc.sh)
    - [R1 output](Espel_C1162_R1_fastqc.html)
    - [R2 output](Espel_C1162_R2_fastqc.html)
- [Espel_C-117-2 fastQC sbatch](Espel_C1171_fastqc.sbatch)
- [Espel_C-117-2 fastQC sh](Espel_C1171_fastqc.sh)
    - [R1 output](Espel_C1172_R1_fastqc.html)
    - [R2 output](Espel_C1172_R2_fastqc.html)
##### *E. multiplicata*
- [Emult_RMB5925 fastQC sbatch](Emult_RMB5925_fastqc.sbatch)
- [Emult_RMB5925 fastQC sh](Emult_RMB5925_fastqc.sh)
    - [R1 output](Emult_RMB5925_R1_fastqc.html)
    - [R2 output](Emult_RMB5925_R2_fastqc.html)
- [Emult_RMB5926 fastQC sbatch](Emult_RMB5926_fastqc.sbatch)
- [Emult_RMB5926 fastQC sh](Emult_RMB5926_fastqc.sh)
    - [R1 output](Emult_RMB5926_R1_fastqc.html)
    - [R2 output](Emult_RMB5926_R2_fastqc.html)
- [Emult_RMB5927 fastQC sbatch](Emult_RMB5927_fastqc.sbatch)
- [Emult_RMB5927 fastQC sh](Emult_RMB5927_fastqc.sh)
    - [R1 output](Emult_RMB5927_R1_fastqc.html)
    - [R2 output](Emult_RMB5927_R2_fastqc.html)
 
#### Task 2: I did NOT have to trim these files
-  No scripts here! 😜

#### Task 3: I used the program Kallisto to align and count my reads. First I made an index of the Bonett lab reference transcriptome, then setup the Kallisto quantification. For the quantification script I used the given quantification commands, newly created transcriptome index, and R1 and R2 files of each specimen. Dr. Toomey taught us how to use arrays, so I did NOT have to submit 7+ scripts! It does require an 'args' file.
- [Bonett reference transcriptome](updated_transcriptome.fasta)
- [kallisto index sbatch](kallisto_index.sbatch)
- [kallisto index sh](kallisto_index.sh)
- [kallisto quant sbatch](kallisto_quant.sbatch)
- [kallisto_quant.sh](kallisto_quant.sh)
- [kallisto quant args](kallisto_quant.args)

#### Task 4: I downloaded the output folder to my local computer that contained the reads counts and measurement variance.
- [sed command for titles](sed_titles.sh)
    - These commands clean up the output file, so it can be imported into R studio
- [Headers for R](TTC_double_header_nocomma.txt)
    - This list contains all of the gene names, I had to duplicate the gene name in each row to make the R script work
- [Table](ExpTable_TTC.txt)
    - This table delineates the two groups (*E. spelaea* vs *E. multiplicata*)

##### Task 5: Once you downloaded the output folder and associated text files, open up R studio. I used the script Dr. Toomey gave us in class for the DEGs and sleuth analyses to examine differential gene expression of the two groups: *E. spelaea* larva vs *E. multiplicata* larva. I uploaded the output volcano plot and heatmap below. If downloaded as a pdf, then you can use Adobe Illustrator to organize the gene names better.
- [HeatMap](heatmap.pdf)
- [VolcanoPlot](volcanoplot.pdf)
- [RNA-seq R script](RNA-seq.R)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------


## Part 2: Deep RNA-seq 
##### For this data I have 2 larval specimens of *E. spelaea* (Grotto Salamander)
- *E. spelaea* C-29-1
- *E. spelaea* C-30-1

##### and 1 larval specimen of *E. multiplicata* (Many-ribbed Salamander)
- *E. multiplicata* C-6-1

#### Task 1: I evaluated the quality of my Illumina data with the fastqc program
##### *E. spelaea*
- [Espel_C-29-1 fastQC sbatch](Espel_C291_fastqc.sbatch)
- [Espel_C-29-1 fastQC sh](Espel_C291_fastqc.sh)
    - [R1 output](Espel_C291_R1_fastqc.html)
    - [R2 output](Espel_C291_R2_fastqc.html)
- [Espel_C-30-1 fastQC sbatch](Espel_C301_fastqc.sbatch)
- [Espel_C-30-1 fastQC sh](Espel_C301_fastqc.sh)
    - [R1 output](Espel_C301_R1_fastqc.html)
    - [R2 output](Espel_C301_R2_fastqc.html)
##### *E. multiplicata*
- [Emult_C-6-1 fastQC sbatch](Emult_C61_fastqc.sbatch)
- [Emult_C-6-1 fastQC sh](Emult_C61_fastqc.sh)
    - [R1 output](Emult_C61_R1_fastqc.html)
    - [R2 output](Emult_C61_R2_fastqc.html)
 
#### Task 2: I trimmed and filtered my Deep RNA-seq data by the removal of low quality reads and adpators.
- [Espel_C-29-1 trim sbatch](espel_trim_291.sbatch)
- [Espel_C-29-1 trim sh](espel_trim_291.sh)
    - [R1 output](trimmed_reads291_val_R1_fastqc.html)
    - [R2 output](trimmed_reads291_val_R2_fastqc.html)
- [Espel_C-30-1 trim sbatch](espel_trim_301.sbatch)
- [Espel_C-30-1 trim sh](espel_trim_301.sh)
    - [R1 output](trimmed_reads301_val_1_fastqc.html)
    - [R2 output](trimmed_reads301_val_2_fastqc.html)
- [Emult_C-6-1 trim sbatch](emult_trim_61.sbatch)
- [Emult_C-6-1 trim sh](emult_trim_61.sh)
    - [R1 output](trimmed_readsC61_val_1_fastqc.html)
    - [R2 output](trimmed_readsC61_val_2_fastqc.html)
 
#### Task 3: The program SPAdes was used in RNA mode to de novo assemble my trimmed RNA-seq data. This will produce a transcript.fasta instead of a contig.fasta.
- [Espel_C-29-1 SPAdes sbatch](C291_RNA_spades.sbatch)
- [Espel_C-29-1 SPAdes sh](C291_RNA_spades.sh)
- [Espel_C-30-1 SPAdes sbatch](C301_RNA_spades.sbatch)
- [Espel_C-30-1 SPAdes sh](C301_RNA_spades.sh)
- [Emult_C-6-1 SPAdes sbatch](C61_RNA_spades.sbatch)
- [Emult_C-6-1 SPAdes sh](C61_RNA_spades.sh)

#### Task 4: After running the de novo assembly with SPAdes, I used the program QUAST to generate statistics on the assembly.
- [Espel_C-29-1 QUAST sbatch](C291_RNAquast.sbatch)
- [Espel_C-29-1 QUAST sh](C291_RNAquast.sh)
    - [Report](report_C291.txt)
- [Espel_C-30-1 QUAST sbatch](C301_RNAquast.sbatch)
- [Espel_C-30-1 QUAST sh](C301_RNAquast.sh)
    - [Report](report_C301.txt)
- [Emult_C-6-1 QUAST sbatch](C61_RNAquast.sbatch)
- [Emult_C-6-1 QUAST sh](C61_RNAquast.sh)
    - [Report](report_C61.txt)

#### Task 5: I used the Uniprotkb database (https://www.uniprot.org/help/uniprotkb) to download protein sequences for salamanders (20k) and frogs (465k). I unzipped the files and concatenated both into a single fasta file `cat uniprotkb_salamander.fasta uniprotkb_frog.fasta > amphibian_protein.fasta`. Then I converted the amphibian fast file into a blast database with diamond.
- [amphibian index sbatch](mkdb_diamond.sbatch)
- [amphibian index sh](mkdb_diamond.sh)

#### Task 6: Now I can run the blast search with blastx to search RNA transcripts against amphibian protein database. This will create .tsv output files.
- [Espel_C-29-1 blastx sbatch](diamond_blastx_C291.sbatch)
- [Espel_C-29-1 blastx sh](diamond_blastx_C291.sh)
- [Espel_C-30-1 blastx sbatch](diamond_blastx_C301.sbatch)
- [Espel_C-30-1 blastx sh](diamond_blastx_C301.sh)
- [Emult_C-6-1 blastx sbatch](diamond_blastx_C61.sbatch)
- [Emult_C-6-1 blastx sh](diamond_blastx_C61.sh)

#### Task 7: Next I stripped out the information of interest with the `awk` command with Toomey's script. Next we merge the header file to the transcriptome, with the replace function `seqkit`. 
- [Emult_C-6-1 awk command](awk.sh)
- [Emult_C-6-1 seqkit command](seqkit.sh)

#### Task 8: In order to search nucleotides databases I went to NCBI and searched "caudata" and downloaded a *Pleurodeles waltl* `rna_from_genome.fna` file. I then converted this to a database, then ran a nucleotide to nucleotide blastn search of my de novo transcriptomes. This will output a `.tsv` file per specimen 😸
- [Convert to database script](make_NCBI_database.sh)
- [Espel_C-29-1 blastn sbatch](blastn_C291.sbatch)
- [Espel_C-30-1 blastn sh](blastn_C301.sh)
- [Espel_C-30-1 blastn sbatch](blastn_C301.sbatch)
- [Espel_C-29-1 blastn sh](blastn_C291.sh)
- [Emult_C-6-1 blastn sbatch](blastn_C61.sbatch)
- [Emult_C-6-1 blastn sh](blastn_C61.sh)

#### Task 9: I used the program Kallisto to align and count my reads. First I made an index of the Bonett lab reference transcriptome, then setup the Kallisto quantification. For the quantification script I used the given quantification commands, newly created transcriptome index, and R1 and R2 files of each specimen. Dr. Toomey taught us how to use arrays, so I did NOT have to submit 7+ scripts! It does require an 'args' file.
- [Espel_C-29-1 kallisto index sbatch](Espel291_kallisto_deep_index.sbatch)
- [Emult_C-29-1 kallisto index sh](Espel291_kallisto_deep_index.sh)
- [Espel_C-30-1 kallisto index sbatch](Espel301_kallisto_deep_index.sbatch)
- [Emult_C-30-1 kallisto index sh](Espel301_kallisto_deep_index.sh)
- [Emult_C-6-1 kallisto index sbatch](Emult_kallisto_deep_index.sbatch)
- [Emult_C-6-1 kallisto index sh](Emult_kallisto_deep_index.sh)
- [kallisto quant sbatch](kallistodeep_quant.sbatch)
- [kallisto_quant.sh](kallistodeep_quant.sh)
- [kallisto quant args](kallistodeep_quant.args)

#### Task 4: I downloaded the output folder to my local computer that contained the reads counts and measurement variance.
- [sed command for titles](sed_titles.sh)
    - These commands clean up the output file, so it can be imported into R studio
- [Headers for R](TTC_double_header_nocomma.txt)
    - This list contains all of the gene names, I had to duplicate the gene name in each row to make the R script work
- [Table](ExpTable_TTC.txt)
    - This table delineates the two groups (*E. spelaea* vs *E. multiplicata*)
