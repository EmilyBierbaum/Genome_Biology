## Genomic Adventure Time x2
## Chapter Three
#### Task 1 we extracted the UNmapped reads, that did not map to the assembly. We then converted them from bam to fastq.
- [bam to fastq sbatch](bam_to_fasta.sbatch)
- [bam to fasta sh](bam_to_fasta.sh)

#### Task 2 we checked the number of entired and headers for the two read fastq files produced. I used the `cat commands`. Then I repurposed the fastqc program sbatch and sh file to evaluate the QC.
- [unmapped fastq sbatch](unmapped_fastqc.sbatch)
- [unmapped fastqc sh](unmapped_fastqc.sh) 
- Check 'em out:
   - [Read 1 unmapped fastqc report](unmapped_r1_fastqc.html)
   - [Read 2 unmapped fastqc report](unmapped_r2_fastqc.html)

#### Task 3 we did a de novo assembly of our unmapped fastq file with the assembler SPAdes. I will definitely be using this program for my class project 🕶️ Produced output files of parameters, contigs, scaffolds, and an assembly graph.
- [unmapped SPAdes sbatch](unmapped_spades.sbatch)
- [unmapped SPAdes sh](unmapped_spades.sh)
   - [parameters output](params.txt)
   - [contigs output](contigs.fasta)
   - [scaffold output](scaffolds.fasta)
   - [assembly graph output](assembly_graph.fastg)
 
#### Task 4 used the program QUAST (quality assessment tool for genome assemblies) to examine statistics of our assembly. See report for details.
- [unmapped QUAST sbatch](unmapped_quast.sbatch)
- [unmapped QUAST sh](unmapped_quast.sh)
    - [report file](report.txt)
 
#### Task 5 analyzed our reads from the de novo assembly. One method was to search contigs against NCBI nucleotide database with the BLAST (basic local alignment tool) command. However we DO NOT run this... But I attached the commands below for executing a BLAST search and making the output options more user friendly. We downloaded the precomputed results from Dr. Toomey and reviewed them 😃
- [BLAST command](blast.txt)
- [BLAST output options](blast_output_options.txt)

#### Task 6 called open reading frames (ORFs) within the contigs (see output file). The ORFs can be searched against NCBI non-redundant database, we DID NOT run this but the command is below. Lastly we did a double check to make sure that the contigs did not appear in the reference sequence. Can never be toooo cautious! I had to redownload the fna file for the BLASTn step because it was deleted from my scratch folder.
- [unmapped ORF sbatch](unmapped_orf.sbatch)
- [unmapped ORF sh](unmapped_orf.sh)
     - [Contigs ORF output fasta file](contigs.orf.fasta) 
     - [NCBI nr blast search command](blast_nr_database.txt) 
- [unmapped BLASTn sbatch](unmapped_blastn.sbatch) 
- [unmapped BLASTn sh](unmapped_blastn.sh)
    - [unmapped blast to genome output](unmapped_blast_to_genome.txt)

#### Task 7 ran our Contigs ORF fasta file through a database called PFAM, a database of protein families. First we made sure the database was ready then searched the PFAM database of Hidden Markov Models to determine which protein families are present in our contig file. We specificed 4 CPU cores and stated we want to search active sites. Output file is below. Once again, I had to redownload files... this time the pfam because it was deleted from my scratch folder. Hasta la vista chapter 3!
- [unmapped PFAM sbatch](unmapped_pfam.sbatch) 
- [unmapped PFAM sh](unmapped_pfam.sh)
  - [PFAM output file](contigs.orf.pfam)