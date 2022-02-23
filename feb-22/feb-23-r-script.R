# Author: Emmanuel Ndubuisi; Date: Feb 23 ,2022; Purpose: In class exercise
library("ggpubr")
library("RColorBrewer")
library("dplyr")

PATH <- "https://raw.githubusercontent.com/spawar2/STAT302/main/ddf--entities--geo--country.csv"
df <- read.csv(PATH, header=TRUE)

# create new dataframe from df with only the columns we want
cor_df <- df %>% select(country, iso3166_1_numeric, latitude) %>% na_if("") %>% na.omit

# calculate correlation between iso31666_1_numeric and latitude
cor.test(cor_df$iso3166_1_numeric, cor_df$latitude, method = "pearson")

# generate scatter plot of iso31666_1_numeric and latitude
ggscatter(cor_df, x = "iso3166_1_numeric", y = "latitude", add = "reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson")
