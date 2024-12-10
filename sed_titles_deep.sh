grep  '^>' Espel301_transcripts_annotated.fasta | sed -E 's/>([^ ]+) .* \(([^)]+)\).*/\1 \2/' > Espel301_headers.txt

