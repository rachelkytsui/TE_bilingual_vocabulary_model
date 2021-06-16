# TE_bilingual_vocabulary_model

Repository overview:
This repository holds the data and analysis script for the paper "Are translation equivalents special? Evidence from simulations and empirical data from bilingual infants".

## data cleaning scripts
* `01_data_wordbank.Rmd`: This script implements and documents how we retrieve the percentile information from wordbankr. 
  + In our study, we define developmental level of a child as the number of potentially learnable words. The number of learnable words is determined by the averaging of English and French productive CDI vocabulary at the 90th percentile at different ages. So we need to retrieve the percentile information from Wordbank (Frank et al., 2016).
  + This generates the "ws_percentile.csv" data file.
* `02_clean_data.Rmd`: This script implements and documents the data cleaning process. 
  + The raw data from Gonzalez-Barrero et al. (2020) comprises archival expressive vocabulary data from English and French monolingual children, as well as English-French bilingual children. Our current study is interested in bilingual vocabulary development, so we are only keeping data from bilingual children.
  + This generates the "keepers_ws_TE.csv" data file.
* `03_prepare_data.Rmd`: This script implements and documents how we prepared the keepers_data for analysis.
  + This generates the "keepers_ws_TE_final.csv" data file.

## data_raw
* `output_analyzeSent.Rdata`: The raw archival data from Gonzalez-Barrero et al. (2020).

## data_keepers
* `ws_percentile.csv`: The percentile information generated from "01_data_wordbank.Rmd".
* `keepers_ws_TE.csv`: The cleaned data generated from "02_clean_data.Rmd".
* `keepers_ws_TE_final.csv`: The final data generated from "03_prepare_data.Rmd", which is used in the analysis.

## paper
This folder contains the .Rmd file which runs the analysis and knits the result into a .pdf file.
* `paper_TE_bilingual_vocabulary_model.Rmd`: The analysis script and content of the paper.
* `paper_TE_bilingual_vocabulary_model.pdf`: The final paper.

## simulations_old_versions
This folder holds older versions of analysis scripts, which should be ignored.
