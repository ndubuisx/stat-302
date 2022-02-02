# Author: Emmanuel Ndubuisi; Date: Feb 2 2022; Purpose: Generate different types of plots using the ggplot library

# sets the working directory for script
# setwd("")

PATH <- "https://covidtracking.com/data/download/national-history.csv"
data <- read.csv(PATH, header=TRUE)

# remove scientific notation and replot x-scale
options(scipen=999)

# plotting with ggplot2
library(ggplot2)

# selecting first data rows from the data and storing it into a new dataframe (data2)
data2 <- data[1:10,]

# plotting on data2
p <- ggplot(data2, aes(x=death, y=onVentilatorCurrently)) + geom_bar(stat="identity")

# ommit n/a values
data = na.omit(data)

# plotting on data without n/a values
p1 <- ggplot(data, aes(x=death, y=onVentilatorCurrently)) + geom_bar(stat="identity")

# adding colors to bars
p2 <- ggplot(data, aes(x=death, y=onVentilatorCurrently)) + geom_bar(stat="identity", fill="red")

# dding colors to bars (steelblue)
p3 <- ggplot(data, aes(x=death, y=onVentilatorCurrently)) + geom_bar(stat="identity", fill="steelblue")
