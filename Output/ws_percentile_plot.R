library(here)
library(tidyverse)
library(tidylog)
library(wordbankr)

ws_percentile_plot <- ws_percentile %>%
  pivot_longer(-age_months_percentile, names_to = "type", values_to = "number_of_words") %>%
  mutate(type = recode(type,
                       Average_90percentile = "Average",
                       EngWS_90percentile = "English at the 90th percentile", 
                       FrWS_90percentile = "French at the 90th percentile")) %>%
  ggplot(aes(x= age_months_percentile, y = number_of_words, color = type, linetype = type)) +
  theme_minimal(base_size = 18) +
  geom_line(size = 1.5) +
  scale_x_continuous(breaks=seq(16, 130, 1)) +
  scale_color_manual(values=c("#984ea3", "#fb8072", "#80b1d3")) + 
  scale_linetype_manual(values=c("solid", "dashed", "dashed")) +
  labs(x = "Age (months)", 
       y = "Number of productive vocabulary", 
       color = "Language",
       linetype = "Language") +
  theme(legend.position="bottom") +
  guides(colour = guide_legend(nrow = 3),
         linetype = guide_legend(nrow = 3)) 

ggsave("/Users/racheltsui/Documents/GitHub/TE_bilingual_vocabulary_model/Output/BU_ws_percentile_plot.png", 
       ws_percentile_plot,
       width = 6, height = 6)
  

  