library(tidyverse)
library(nnet)
library(knitr)
library(broom)


gss <- read_csv("data/gss2016.csv",
                na = c("", "Don't know", "No answer", 
                       "Not applicable"), 
                guess_max = 2867) %>%
  select(natmass, age, sex, sei10, region, polviews) %>%
  drop_na()

