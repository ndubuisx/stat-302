# Author: Emmanuel Ndubuisi; Date: Mar 7, 2022; Purpose: Perform Linear Regression Analysis

# sets the working directory for script
# setwd("")

PATH <- "https://covidtracking.com/data/download/national-history.csv"
data <- read.csv(PATH, header=TRUE)

# use the death and hospitalize increase 
# for understanding the relationship between patience hospitalized and patient dying
relation <- lm(data$death~data$hospitalizedIncrease)
summary(relation)

# how to generate regression plot 
plot(data$death, data$hospitalizedIncrease, col="blue", main="Death & Patients Hospitalized Regression", abline(lm(data$hospitalizedIncrease~data$death)), cex=1.3, pch=16, xlab="Deaths", ylab="Patients Hospitalized")
