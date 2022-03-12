library(tidyverse)
library(nnet)
library(knitr)
library(broom)

gss$natmass <- as.factor(gss$natmass)

gss$natmass <- fct_recode(gss$natmass, "1"="Too little", "1"="Too much", "0"="About right")


gss$polviews <- as.factor(gss$polviews)

gss$polviews <- fct_recode(gss$polviews, 
                           "1"="Extremely liberal",
                           "2"="Liberal",
                           "3"="Slightly liberal",
                           "4"="Moderate",
                           "5"="Slghtly conservative",
                           "6"="Conservative",
                           "7"="Extrmly conservative")

gss$polviews <- fct_relevel(gss$polviews,
                            "1", "2", "3", "4", "5", "6", "7")


gss$age <- as.factor(gss$age)
gss$age <- fct_recode(gss$age, "89" = "89 or older")
gss$age <- as.integer(gss$age)
