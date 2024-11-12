# Emily Bierbaum Transcriptome project
## How does 3' RNA-seq differ from Deep RNA-seq on differential gene expression of cave adaptation genes in Eurycea spelaea vs Eurycea multiplicata?

### Part 1: 3' RNA-seq 
#### For this data I have 4 larval specimens of E. spelaea (Grotto Salamander)
- E. spelaea C-29-2
- E. spelaea C-116-1
- E. spelaea C-116-2
- E. spelaea C-117-2

#### and 3 larval specimens of E. multiplicata (Many-ribbed Salamander)
- E. multiplicata RMB5925
- E. multiplicata RMB5926
- E. multiplicata RMB5927

### Task 1: I evaluated the quality of my Illumina data with the fastqc program
##### E. spelaea
- [Espel_C-29-2 fastQC sbatch](Espel_C292_fastqc.sbatch)
- [Espel_C-29-2 fastQC sh](Espel_C292_fastqc.sh)
    - [R1 output](Espel_C301_R1_fastqc.html)
    - [R2 output](Espel_C301_R2_fastqc.html)
- [Espel_C-116-1 fastQC sbatch](Espel_C1161_fastqc.sbatch)
- [Espel_C-116-1 fastQC sh](Espel_C1161_fastqc.sh)
    - [R1 output](Espel_C1161_R1_fastqc.html)
    - [R2 output](Espel_C1161_R2_fastqc.html)
- [Espel_C-116-2 fastQC sbatch](Espel_C1162_fastqc.sbatch)
- [Espel_C-116-2 fastQC sh](Espel_C1162_fastqc.sh)
    - [R1 output](Espel_C1162_R1_fastqc.html)
    - [R2 output](Espel_C1162_R2_fastqc.html)
- [Espel_C-117-1 fastQC sbatch](Espel_C1171_fastqc.sbatch)
- [Espel_C-117-1 fastQC sh](Espel_C1171_fastqc.sh)
    - [R1 output](Espel_C1171_R1_fastqc.html)
    - [R2 output](Espel_C1171_R2_fastqc.html)
##### E. multiplicata
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
 
### Task 2: I did NOT have to trim these files
-  No scripts here! 😜

### Task 3: I used the program Kallisto to align and count my reads. First I made an index of the Bonett lab reference transcriptome, then setup the Kallisto quantification. For the quantification script I used the quantification scripts, newly created transcriptome index, and R1 and R2 files of each specimen. Dr. Toomey taught us how to use arrays, so I did NOT have to submit 7+ scripts! It does require an 'args' file.
- [Bonett reference transcriptome](updated_transcriptome.fasta)
- [kallisto index sbatch](kallisto_index.sbatch)
- [kallisto index sh](kallisto_index.sh)
- [kallisto quant sbatch](kallisto_quant.sbatch)
- [kallisto_quant.sh](kallisto_quant.sh)
- [kallisto quant args](kallisto_quant.args)

### Task 4: I downloaded the output folder to my local computer that contains the reads counts and measurement variance.
- [sed command for titles](sed_titles.sh)
    - These commands clean up the output file, so it can be imported into R studio
- [Headers for R](TTC_double_header_nocomma.txt)
    - This list contains all of the gene names, I had to duplicate the gene name in each row to make the R script work
- [Table](ExpTable_TTC.txt)
    - This table delineates the two groups (E. spelaea vs E. multiplicata)

#### Task 5: Once you downloaded the output folder and associated text files, open up R studio. I used the script Dr. Toomey gave us in class for the DEGs and sleuth analyses to examine differential gene expression of the two groups: E. spelaea larva vs E. multiplicata larva. I uploaded the output volcano plot and heatmap below. If downloaded as a pdf, then you can use Adobe Illustrator to organize the gene names better.
- [HeatMap](heatmap.pdf)
- [VolcanoPlot](volcanoplot.pdf)
- [RNA-seq R script](RNA-seq.R)

### Part 2: Deep RNA-seq 
#### For this data I have 2 larval specimens of E. spelaea (Grotto Salamander)
- E. spelaea C-29-1
- E. spelaea C-30-1

#### and 1 larval specimen of E. multiplicata (Many-ribbed Salamander)
- E. multiplicata C-6-1
