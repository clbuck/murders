library(tidyverse)
murders <- read_csv("data/murders.csv")
murders <- murders %>% mutate(region = factor(region), rate = total / population *10000)
save(murders, file = "rda/murders.rda")