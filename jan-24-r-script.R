# Author: Emmanuel Ndubuisi; Date: Jan 24 2022; Purpose: National COVID Dataset

install.packages("tidyverse")
install.packages("ggplot2")
install.packages("dplyr")
if(!require(devtools)) install.packages("devtools") devtools::install_github("kassambara/ggpubr")

# Check the installed libraries
library(ggpubr)
library(tidyverse)
library(ggplot2)
library(dplyr)

PATH <- "https://covidtracking.com/data/download/national-history.csv"
data <- read.csv(PATH)
