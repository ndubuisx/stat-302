# Author: Emmanuel Ndubuisi; Date: Feb 2 2022; Purpose: Performing correlation analysis on National COVID dataset.

# sets the working directory for script
# setwd("")

PATH <- "https://covidtracking.com/data/download/national-history.csv"
data <- read.csv(PATH, header=TRUE)

# remove scientific notation and replot x-scale
options(scipen=999)

library(corrplot)

data_2 <- data[1:20,]
data_matrix <- data_2[,2:5]
data_matrix <- as.matrix(data_matrix)

# correlation value on matrix
res <- cor(data_matrix)
corrplot(res, type = "upper", order="hclust", tl.col="black", tl.srt=45)

library("PerformanceAnalytics")
chart.Correlation(res, histogram=TRUE, pch=19)
