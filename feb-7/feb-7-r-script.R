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

# R function to generate correlation value w/o library
cor.test(data$states, data$death, method="pearson")

# spearman correlation value
cor.test(data$states, data$death, method="spearman")

library(corrplot)

data_2 <- data[1:20,]
data_matrix <- data_2[,2:5]
data_matrix <- as.matrix(data_matrix)

res <- cor(data_matrix)
corrplot(res, type = "upper", order="hclust", tl.col="black", tl.srt=45)
