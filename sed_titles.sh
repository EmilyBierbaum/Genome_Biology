ln -s /scratch/biol726301/Eurycea_fastq/ updated_transcriptome.fasta ------DIDnt work :(

grep  '^>' updated_transcrip.fasta | sed -E 's/>([^ ]+) .* \(([^)]+)\).*/\1 \2/' > TTC_headers.txt