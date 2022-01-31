# Author: Emmanuel Ndubuisi; Date: Jan 31 2022; Purpose: National COVID Dataset

# sets the working directory for script
# setwd("")

PATH <- "https://covidtracking.com/data/download/national-history.csv"
data <- read.csv(PATH, header=TRUE)

# scatter plot without any external library (death vs onVentilatorCurrently)
plot(data$death, data$onVentilatorCurrently)

# remove scientific notation and replot x-scale
options(scipen=999)

# change axis labels 
# x = "Number of Deaths", y = "Patients on Ventilator"
plot(data$death, data$onVentilatorCurrently, xlab="Number of Deaths", ylab="Patients on Ventilator")
