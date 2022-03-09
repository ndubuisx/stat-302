# Author: Emmanuel Ndubuisi; Date: Mar 7, 2022; Purpose: Perform Linear Regression Analysis

# sets the working directory for script
# setwd("")

PATH <- "https://covidtracking.com/data/download/national-history.csv"
data <- read.csv(PATH, header=TRUE)

# use the death and hospitalize increase 
# for understanding the relationship between patience hospitalized and patient dying
relation <- lm(data$death~data$hospitalizedIncrease+ data$onVentilatorCumulative+data$positiveIncrease, data)
summary(relation)

# What will happen to the number of deaths, if the hospitalized patients are say 1000 for next month?
# Below we create a data frame called A
A <- data.frame(x=1000)
result <- predict(relation, A)
