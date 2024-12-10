grep  '^>' Emult_transcripts_annotated.fasta | sed -E 's/>([^ ]+) .* \(([^)]+)\).*/\1 \2/' > Emult_headers.txt

grep  '^>' Espel291_transcripts_annotated.fasta | sed -E 's/>([^ ]+) .* \(([^)]+)\).*/\1 \2/' > Espel291_headers.txt

grep  '^>' Espel301_transcripts_annotated.fasta | sed -E 's/>([^ ]+) .* \(([^)]+)\).*/\1 \2/' > Espel301_headers.txt

