# Author: Emmanuel Ndubuisi; Date: Feb 28 ,2022; Purpose: In class exercise
library("ggpubr")
library("RColorBrewer")
library("dplyr")

PATH <- "https://raw.githubusercontent.com/spawar2/STAT302/main/ddf--entities--geo--country.csv"
df <- read.csv(PATH, header=TRUE)
df2 <- df[, c(8,11)]
df2 <- na.omit(df2)

# create new dataframe from df with only the columns we want
cor_df <- df %>% select(country, iso3166_1_numeric, latitude) %>% na_if("") %>% na.omit

# calculate correlation between iso31666_1_numeric and latitude
cor.test(cor_df$iso3166_1_numeric, cor_df$latitude, method = "pearson")

# generate scatter plot of iso31666_1_numeric and latitude
ggscatter(cor_df, x = "iso3166_1_numeric", y = "latitude", add = "reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson")

df3 <- df[, c(1,8,11)]
df3 <- na.omit(df3)
row.names(df3) <- df3[,1]
df3 <- df3[,-1]

# scale df3
df <- scale(df3)


# generate a color palette
col <- colorRampPalette(brewer.pal(10, 'RdYlBu'))(256)

# use function heatmap to generate a heatmap
heatmap(df, scale="none", col = col, Colv=NA, Rowv=NA)
