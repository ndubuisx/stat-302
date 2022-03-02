# Author: Emmanuel Ndubuisi; Date: Mar 2, 2022; Purpose: Generate pie chart and volcano plot

library(ggplot2)

# create a list of elements called slices
slices <- c(10,12,4,16,8)

# create a list of labels
labels <- c("US", "UK", "Australia", "Germany", "France")

# function to generate pie chart
pie(slices, labels=labels, main="Pie Chart of Countries", angle=45)

file_name <- "de_df_for_volcano.rds"

download.file("https://raw.githubusercontent.com/biocorecrg/CRG_RIntroduction/master/de_df_for_volcano.rds", file_name, method="curl")

tmp <- readRDS(file_name)

# convert to complete cases
de <- tmp[complete.cases(tmp),]

# function to generate volcano plot (usually used in gene expression analysis to find important genes)
ggplot(data=de, aes(x=log2FoldChange, y=pvalue)) + geom_point()
