grep  '^>' Espel_301_transcriptome.fasta | sed -E 's/>([^ ]+) .* \(([^)]+)\).*/\1 \2/' > TTC_headers.txt
