# Author: Emmanuel Ndubuisi; Date: Jan 26 2022; Purpose: National COVID Dataset

# sets the working directory for script
# setwd("")

PATH <- "https://covidtracking.com/data/download/national-history.csv"
data <- read.csv(PATH, header=TRUE)

# check the dimension of data frame
# [1] 420  17 -> 420 rows and 17 columns
dim(data)

# check names of colums in data frame
names(data)

# select two columns from data (date and positive) and store in new data frame named data2
# data2 <- select(data, c("date", "positive"))
# data2 <- data %>% select("date", "positive")
data2 <- data.frame(data$date, data$positive)

# summary of data
summary(data)

# checking the data structure
is.data.frame(data)
is.matrix(data)

# checking the data structure
is.numeric(data)
is.numeric(data$death)

# check the missing values
is.na(data$death)

# extract elemets of the summary output
df <- data.frame(unclass(summary(data)))

# column names of df
names(df)
