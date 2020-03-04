library(tidyverse)
murders <- read_csv("data/murders.csv")
murders <- murders %>% mutate(region = factor(region), rate = total / population * 10^5)
save(murders, file = "rda/murders.rda")  # rda = R data file -> format in which to save R objects
