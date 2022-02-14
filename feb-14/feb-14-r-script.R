# Author: Emmanuel Ndubuisi; Date: Feb 2 2022; Purpose: To generate heat map on some sample

# sets the working directory for script
# setwd("")

# load sample data called mtcars
df <- mtcars

# check first few lines of data
head(df)
dim(df)

# convert to numerical method
# without scaling -> error: x must be a numeric matrix.
df <- scale(df)

# generate head map using default R function.
heatmap(df, scale="row")
