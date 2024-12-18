# EMILY L. BIERBAUM transcriptome project 🦎
## Title: Differential expression of vision related genes across ontogeny in the cave-adapted Grotto Salamander, *E. spelaea* 
### For this project, I wanted to evaluate statistical differences in the level of differential gene expression produced from the Bonett lab transcriptome vs a transcriptome generated from my *de novo* assembled deep RNA-seq file. The Bonett lab transcriptome has roughly ~4,300 genes, however that encompasses less than half of all genes that could be present! Thus, I decided to compare gene coverage, by *de novo* assembling and annotating one of my deep RNA-seq fastq files to serve as another transcriptome [hopefully more robust]. We want to see if the Bonett transcriptome or the newly created one better covers the breadth of differential gene expression. See image below for the project outline
![Outline](guide.png)


### The sample groups I compared for differential gene expression, were eye tissues from control larva vs thyroid hormone (T3) treated larva. T3 induces metamorphosis, so I wanted to examine if this push towards metamorphosis changed the gene expression profile of vision related genes. Interestingly, the Grotto Salamander, is the only known obligate metamorphic cave species 🆒 As larva, they have functional eyes and a fully pigmented body, yet after metamorphsis when they disperse into caves, the eyes degenerate and pigmentation reduces dramatically. 

![Dante Fenolio](DanteFen.png)
###### Dante Fenolio

## Below lists the samples used for this study (3' RNA-seq files)
##### Four CONTROL larval specimens
- *E. spelaea* C-29-2
- *E. spelaea* C-116-1
- *E. spelaea* C-116-2
- *E. spelaea* C-117-2

##### Three T3 TREATED larval specimens
- *E. spelaea* T3-31-2
- *E. spelaea* T3-32-1
- *E. spelaea* T3-118-1


## ⭐ Tasks associated to the annotated Bonett transcriptome ⭐
#### Task 1: I evaluated the quality of my Illumina data with the `fastqc` program
#### *E. spelaea*
#### Control 
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
#### T3 Treated
- [Espel_T3-31-2 fastQC sbatch](Espel_T3_31_2_fastqc.sbatch)
- [Espel_T3-31-2 fastQC sh](Espel_T3_31_2_fastqc.sh)
    - [R1 output](Espel_T3_31_2_R1_fastqc.html)
    - [R2 output](Espel_T3_31_2_R2_fastqc.html)
- [Espel_T3-32-1 fastQC sbatch](Espel_T3_32_1_fastqc.sbatch)
- [Espel_T3-32-1 fastQC sh](Espel_T3_32_1_fastqc.sh)
    - [R1 output](Espel_T3_32_1_R1_fastqc.html)
    - [R2 output](Espel_T3_32_1_R2_fastqc.html)
- [Espel_T3-118-1 fastQC sbatch](Espel_T3_118_1_fastqc.sbatch)
- [Espel_T3-118-1 fastQC sh](Espel_T3_118_1_fastqc.sh)
    - [R1 output](Espel_T3_118_1_R1_fastqc.html)
    - [R2 output](Espel_T3_118_1_R2_fastqc.html)
 
#### Task 2: I did NOT have to trim these files because they are 3' RNA-seq data 
-  No scripts here! 😜

#### Task 3: First I made an index of the Bonett lab reference transcriptome, then setup the `kallisto` quantification. The quant script generates read counts from the R1 and R2 files of each species to the reference index. Dr. Toomey taught us how to use arrays, so I did NOT have to submit 7+ scripts! It does require an 'args' file. I created a folder to output the results to.
- [Bonett reference transcriptome](transcriptome.txt)
- [kallisto index sbatch](kallisto_index.sbatch)
- [kallisto index sh](kallisto_index.sh)
- [kallisto quant sbatch](kallisto_quant.sbatch)
- [kallisto_quant.sh](kallisto_quant.sh)
- [kallisto quant args](kallisto_quant.args)

#### Task 4: I downloaded the output folders to my local computer that contained the reads counts, abundance, and measurement variance.
- [sed command for titles](sed_titles.sh)
    - Cleans up output file, so it can be imported into R studio
- [Headers for R](TTC_double_header_nocomma.txt)
    - Contains all gene names
    - Had to duplicate the gene name in each row to make the R script work
- [Table](ExpTable_TTC.txt)
    - Delineates the two groups (*Control* vs *T3 treated*)

#### Task 5: After you download the output folder and associated text files, open up R studio. I used the script Dr. Toomey gave us in class for the `DEGs` and *sleuth* analyses to examine differential gene expression of the two groups: *control larva* vs *T3 treated larva*. I uploaded the output volcano plot and heatmap below. No genes were significantly differentially expressed (see volcano plot), so the top 50 genes were displayed in the heatmap.
- [3' RNA-seq R script](RNA-seq.R)
#### Volcano plot
##### No significant differences 😫
![VolcanoPlot](Espel_3'_volcano.png)
#### Heatmap
##### Anamorsin was the only eye-related gene in the heatmap. It prevents apoptosis
![HeatMap](Heatmap_Dec.png)
------------------------------------------------------------------------------------------------------------------------------------------------------------------

## ✴️ Tasks associated to the transcriptome produced via *de novo* assembly ✴️
#### The files evaluated for *de novo* assemblies (deep RNA-seq files). Luckily, I had two fastq files of *E. spelaea* larvae, so I examined both until I reached a consensus on which one was more `worthy` as the annotated transcriptome 😆
- *E. spelaea* C-29-1
- *E. spelaea* C-30-1


#### Task 1: I evaluated the quality of my Illumina data with the `fastqc` program
#### *E. spelaea*
- [Espel_C-29-1 fastQC sbatch](Espel_C291_fastqc.sbatch)
- [Espel_C-29-1 fastQC sh](Espel_C291_fastqc.sh)
    - [R1 output](Espel_C291_R1_fastqc.html)
    - [R2 output](Espel_C291_R2_fastqc.html)
- [Espel_C-30-1 fastQC sbatch](Espel_C301_fastqc.sbatch)
- [Espel_C-30-1 fastQC sh](Espel_C301_fastqc.sh)
    - [R1 output](Espel_C301_R1_fastqc.html)
    - [R2 output](Espel_C301_R2_fastqc.html)
 
#### Task 2: I trimmed and filtered my deep RNA-seq data by the removal of low quality reads and adaptors using `trim galore`
- [Espel_C-29-1 trim sbatch](espel_trim_291.sbatch)
- [Espel_C-29-1 trim sh](espel_trim_291.sh)
    - [R1 output](trimmed_reads291_val_R1_fastqc.html)
    - [R2 output](trimmed_reads291_val_R2_fastqc.html)
- [Espel_C-30-1 trim sbatch](espel_trim_301.sbatch)
- [Espel_C-30-1 trim sh](espel_trim_301.sh)
    - [R1 output](trimmed_reads301_val_1_fastqc.html)
    - [R2 output](trimmed_reads301_val_2_fastqc.html)

 
#### Task 3: The program `SPAdes` was used in `RNA mode` to *de novo* assemble my trimmed RNA-seq data. This will produce a `transcript.fasta` instead of a contig.fasta.
- [Espel_C-29-1 SPAdes sbatch](C291_RNA_spades.sbatch)
- [Espel_C-29-1 SPAdes sh](C291_RNA_spades.sh) 
- [Espel_C-30-1 SPAdes sbatch](C301_RNA_spades.sbatch)
- [Espel_C-30-1 SPAdes sh](C301_RNA_spades.sh)
  
#### Task 4: After running the *de novo* assembly with `SPAdes`, I used the program `QUAST` to generate statistics on the assembly. Based upon the statistics, I will be using *Espel_30-1* for the remaining analyses 🎆
- [Espel_C-29-1 QUAST sbatch](C291_RNAquast.sbatch)
- [Espel_C-29-1 QUAST sh](C291_RNAquast.sh) 
    - [Report](report_C291.txt)
- [Espel_C-30-1 QUAST sbatch](C301_RNAquast.sbatch)
- [Espel_C-30-1 QUAST sh](C301_RNAquast.sh)
    - [Report](report_C301.txt)

#### Task 5: I used the `Uniprotkb database` (https://www.uniprot.org/help/uniprotkb) to download protein sequences for salamanders (20k) and frogs (465k). I unzipped the files and concatenated both into a single fasta file `cat uniprotkb_salamander.fasta uniprotkb_frog.fasta > amphibian_protein.fasta`. Then I converted the amphibian fasta file into a blast database with `diamond`.
- [amphibian index sbatch](mkdb_diamond.sbatch)
- [amphibian index sh](mkdb_diamond.sh)

#### Task 6: Now I can run the blast search with `blastx` to search RNA transcripts against the amphibian protein database. This will create `.tsv` output files.
- [Espel_C-30-1 blastx sbatch](diamond_blastx_C301.sbatch)
- [Espel_C-30-1 blastx sh](diamond_blastx_C301.sh)


#### Task 7: Next I stripped out the information of interest with the `awk` command created by Dr. Toomey. Then we merged the header file to the transcriptome, with the replace function `seqkit`. 
- [Espel_C-30-1 awk command](awk.sh)
- [Espel_C-30-1 seqkit command](seqkit.sh)

#### Task 8: In order to search nucleotides databases I went to NCBI and searched "caudata" and downloaded a *Pleurodeles waltl* `rna_from_genome.fna` file. I then converted this to a database, then ran a nucleotide to nucleotide `blastn` search of my *de novo* transcriptome. This will output a `.tsv` file per specimen 😸
- [Convert to database script](make_NCBI_database.sh)
- [Espel_C-30-1 blastn sh](blastn_C301.sh)
- [Espel_C-30-1 blastn sbatch](blastn_C301.sbatch)

#### Task 9: I used the program `kallisto` to align and count my reads. I made an index of the *de novo* assembly to create a reference transcriptome, then setup the `kallisto` quantification. For the quantification script I used the already given quantification commands, newly created transcriptome index, and R1 and R2 files of each specimen. Created a folder to output results to.😃
- [Espel_C-30-1 kallisto index sbatch](Espel301_kallisto_deep_index.sbatch)
- [Espel_C-30-1 kallisto index sh](Espel301_kallisto_deep_index.sh)
- [kallisto quant sbatch](kallisto_quant_deep_C301.sbatch)
- [kallisto_quant.sh](kallisto_quant_deep_C301.sh)
- [kallisto quant args](espel_kallisto_quant_deep.args)

#### Task 10: Once again, I downloaded the output folder to my local computer that contained the reads counts and measurement variance.
- [sed command for titles](sed_titles_deep.sh)
    - Cleans up output file, so it can be imported into R studio
- [Headers for R](double_header_301.txt)
    - Contains all the gene names
    - Had to duplicate the gene name in each row to make the R script work
    - Most likely too large of a file to view
- [Table](ExpTable_TTC.txt)
    - This table delineates the two groups (*Control* vs *T3*)
 
#### Task 11: After you download the output folder and associated text files, open up R studio. I used the script Dr. Toomey gave us in class for the DEGs and *sleuth* analyses to examine differential gene expression of the two groups: *control larva* vs *T3 treated larva*. I uploaded the output volcano plot and heatmap below. AGAIN 😢... no genes were significantly differentially expressed (see volcano plot), so the top 50 genes were displayed in the heatmap.
- [Deep RNA-seq R script](Deep_RNA-seq.R)
#### Volcano plot
##### No significant differences... but the total variables increased from 2992 to 3518 😎
![VolcanoPlot](Espel301deep.png)
#### Heatmap
##### Rod transducin alpha-subunit and the interphotoreceptor matrix gene were upregulated in the control larva. Rod transducin is involved in the phototransduction pathway, and the interphotoreceptor gene maintains the viability of photoreceptor cells.
![HeatMap](deepseq_heat.png)

----------------------------------------------------------------------------------------------
## Concluding Remarks
### Performance of the Bonett vs *de novo* transcriptome
#### When comparing the alignment rates between the two transcriptomes, the *de novo* assembly transcriptome had over 81,000 targets with 30-40% alignment. Whereas the Bonett transcriptome only had 4,733 targets with a 10-20% alginment (see files below for specifics). However, even though the *de novo* transcriptome had better statistics from the `.json` output files, the gene alignments generated came up as unknown when blast searched. I believe this is from the nucleotide sequences of *Eurycea* being too diverged from *Pleurodeles*. If I reran these analyses I would translate the nucleotide sequences into amino acids, to see if there is more conservation of the genes at the amino acid level.

- [Bonett transcriptome alignment rates](3_alignment_data.txt)
- [De novo assembly alignment rates](de_novo_alignment_data.txt)

### Troubles: Unfortunately salamanders do NOT have annotated genomes readily available so the *Pleurodeles* genome used above is very divergent from the species I examined. `Kallisto` also outputs TPM, which can be imported into R Studio for RNA-seq analyses with *sleuth*. TPM (aka transripts per kilobase million) accounts for sequencing depth and gene length. However I am using 3' RNA-seq data, which are short-reads and gene length is not a necessary factor. I believe outputting the data as read counts and using DESeq2 for RNA-seq analyses better suits 3' RNA-seq data. It also accounts for sequencing depth, BUT also RNA composition. Refer to https://hbctraining.github.io/DGE_workshop/lessons/02_DGE_count_normalization.html for more information.
![image](https://github.com/user-attachments/assets/66d35fc0-f3ac-41d9-bc6d-a7be8ebda643)
 
