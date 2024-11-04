## Genomic Adventure Time
## Chapter Four
#### Task 1 we used SPAdes to de novo assemble the E. coli genome.
- [SPAdes sbatch](full_spades.sbatch)
- [SPAdes sh](full_spades.sh)

#### Task 2 we used QUAST (an old friend) to check the assembly.
- Did not run any sh or sbatch files, I used the quast function in the terminal because it mentioned it wouldnt take long
- I changed directory to  `scratch/biol726301/BIOL7263_Genomics/sequencing_data/ecoli/assembly
- Ran this command in the terminal `quast.py --output-dir quast contigs.fasta`


#### Task 3 we brought back the BWA function to index the contigs.fasta file and remap reads. This time we are aligning to a newly created reference. Then we ran qualimap to get more detailed imformation on our file. Can double check contigs with a blast search.
- [Advanced Align de novo sbatch](align_de_novo.sbatch)
- [Advanced Align de novo sh](align_de_novo.sh)
- [qmap de novo sbatch](qmap_de_novo.sbatch)
- [qmap_de_novo sh](qmap_de_novo.sh)
   - [blast_command](blastn.sbatch)
   - [blast_command](blastn.sh)

#### Task 4 we loaded our Genome into IGV, specifically imported the contigs we assembled as the reference.
- Did not require an sbatch or sh files

#### Task 5 annotated the contigs using BLAST and pfam.
- [orfipy sbatch](orfipy.sbatch)
- [orfipy sh](orfipy.sh)
- [pfam sbatch](pfam.sbatch)
- [pfam sh](pfam.sh)
- [orf blast sbatch](orf_blast.sbatch)
- [orf blast sh](orf_blast.sh)
