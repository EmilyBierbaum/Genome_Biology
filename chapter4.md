## Genomic Adventure Time
## Chapter Four
#### Task 1 we used SPAdes to de novo assemble the E. coli genome.
- [SPAdes sbatch](full_spades.sbatch)
- [SPAdes sh](full_spades.sh)

#### Task 2 we used QUAST (an old friend) to check the assembly.
- Did not run any sh or sbatch files
- `quast.py --output-dir quast contigs.fasta`

#### Task 3 we brought back the BWA function to index the contigs.fasta file and remap reads. This time we are aligning to a newly created reference. Then we ran qualimap to get more detailed imformation on our file.
- [Advanced Align de novo sbatch](align_de_novo.sbatch)
- [Advanced Align de novo sh](align_de_novo.sh)
- [qmap de novo sbatch](qmap_de_novo.sbatch)
- [qmap_de_novo sh](qmap_de_novo.sh)

#### Task 4 we loaded our Genome into IGV, specifically import the contigs we assembled as the reference.
- Did not require an sbatch or sh files

#### Task 5 annotates the contigs using BLAST and pfam.
- [orfipy sbatch](orfipy.sbatch)
- [orfipy sh](orfipy.sh)
- [pfam sbatch](pfam.sbatch)
- [pfam sh](pfam.sh)
- [orf blast sbatch](orf_blast.sbatch)
- [orf blast sh](orf_blast.sh)
