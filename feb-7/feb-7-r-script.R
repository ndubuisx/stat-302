# Author: Emmanuel Ndubuisi; Date: Feb 2 2022; Purpose: Performing correlation analysus on National COVID dataset.

# sets the working directory for script
# setwd("")

PATH <- "https://covidtracking.com/data/download/national-history.csv"
data <- read.csv(PATH, header=TRUE)

# load ggpubr library
library(ggpubr)

# remove scientific notation and replot x-scale
options(scipen=999)

# perform correlation analysis between states and death
ggscatter(data, x="states", y="death", add="reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson", xlab="states", ylab="death")
