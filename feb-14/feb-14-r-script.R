# Author: Emmanuel Ndubuisi; Date: Feb 2 2022; Purpose: To generate heat map on some sample

# load sample data called mtcars
df <- mtcars

# check first few lines of data
head(df)
dim(df)

# generate head map using default R function.
# cars clustered together have the same features.
# without scaling -> error: x must be a numeric matrix.
# scaling converts to numerical method.
heatmap(scale(df), scale="row")

# select rows that start with Fiat or Merc
subset_df <- df[grep("^Fiat|^Merc", row.names(df)),]

heatmap(scale(subset_df), scale = "row")
