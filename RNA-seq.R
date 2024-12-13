if (!requireNamespace('BiocManager', quietly = TRUE))
  install.packages('BiocManager')

BiocManager::install('EnhancedVolcano')
BiocManager::install("devtools")
BiocManager::install("pachterlab/sleuth")


require("BiocManager")
require("EnhancedVolcano")
require("devtools")
require("sleuth")
library(tidyverse)
library(pheatmap)


#read in sample tables - be sure to set correct path 

metadata <- read.table(file = "ExpTable_TTC.txt", sep='\t', header=TRUE, stringsAsFactors = FALSE)

#this command sets up paths to the kallisto output that we will process in the following steps

metadata <- dplyr::mutate(metadata,
                          path = file.path('output', Run_s, 'abundance.h5'))
metadata <- dplyr::rename(metadata, sample = Run_s)

#let's check the metadata

metadata

#Read in headers for the transcripts that we aligned to with kallisto
#These will be mapped in the sleuth_prep command below

ttn<-read_delim("TTC_double_header_nocomma.txt", delim = " ", col_names = FALSE)

colnames(ttn)<-c("target_id","gene")

so <- sleuth_prep(metadata, full_model = ~treat, target_mapping = ttn, extra_bootstrap_summary = TRUE, read_bootstrap_tpm = TRUE, aggregation_column = "gene")

#fit model specified above
so <- sleuth_fit(so)

#print the model
models(so)

#calculate the Wald test statistic for 'beta' coefficient on every transcript 
so <- sleuth_wt(so, 'treatTTC')

#extract the wald test results for each transcript 
transcripts_all <- sleuth_results(so, 'treatTTC', show_all = FALSE, pval_aggregate = FALSE)

head(transcripts_all, 10)

#filtered by significance 
transcripts_sig <- dplyr::filter(transcripts_all, qval <= 0.05)

transcripts_50 <- dplyr::filter(transcripts_all, qval <= 0.05) %>%
  head(50)

genes_all <- sleuth_results(so, 'treatTTC', show_all = FALSE, pval_aggregate = TRUE)

head(genes_all, 10)


#### VOLCANO PLOT

#extract the gene symbols, qval, and b values from the Wlad test results
forVolacano<-data.frame(transcripts_all$gene, transcripts_all$qval, transcripts_all$b)

#rename the columns of the dataframe
colnames(forVolacano)<-c("gene","qval","b")

#plot
EnhancedVolcano(forVolacano,
                lab = forVolacano$gene,
                x = 'b',
                y = 'qval',
                xlab = "\u03B2",
                labSize = 3,
                legendPosition = "none")
#### HEAT MAPS

k_table <- kallisto_table(so, normalized = TRUE)

k_DEG <- k_table %>%
  right_join(transcripts_50, "target_id")

k_DEG_select<-k_DEG %>%
  #apply log10 transformation to the tpm data
  mutate(log_tpm = log10(tpm+1)) %>%
  #select the specifc columns to plot
  dplyr::select(target_id, sample, log_tpm, gene) %>%
  #create "label" from the transcript id and gene symbol
  mutate(label = paste(target_id, gene))%>%
  #pivot data frame to a wide format
  pivot_wider(names_from = sample, values_from = log_tpm) %>%
  #drop the target_id and gene variables
  dplyr::select(!target_id & !gene) %>%
  #convert label to row name
  column_to_rownames("label") %>%
  #convert to matrix
  as.matrix(rownames.force = TRUE) 

#plot with pheatmap! Clusters by gene expression and samples
pheatmap(k_DEG_select, cexRow = 0.4, cexCol = 0.4, scale = "none")

## can also do by row, or column
pheatmap(k_DEG_select, cexRow = 0.4, cexCol = 0.4, scale = "row")


#### GENE ONTOLOGY

#filter for transcripts enriched in the TTC treatment
transcripts_up <- dplyr::filter(transcripts_all, qval <= 0.05, b > 0)

up<-transcripts_up %>%
  dplyr::select(gene)

#filter for transcripts depleted in the TTC treatment
transcripts_down <- dplyr::filter(transcripts_all, qval <= 0.05, b < 0)

down<-transcripts_down %>%
  dplyr::select(gene)

#output the full transcript list
all<-transcripts_all %>%
  dplyr::select(gene)


