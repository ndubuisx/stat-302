# Author: Emmanuel Ndubuisi; Date: Jan 26 2022; Purpose: National COVID Dataset

# sets the working directory for script
# setwd("")

PATH <- "https://covidtracking.com/data/download/national-history.csv"
data <- read.csv(PATH, header=TRUE)

# checks the dimension of data frame
# [1] 420  17 -> 420 rows and 17 columns
dim(data)
