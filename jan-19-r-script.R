# Author: Emmanuel Ndubuisi; Date: Jan 19 2022; Purpose: Install R Packages

install.packages("tidyverse")
install.packages("ggplot2")
install.packages("dplyr")
if(!require(devtools)) install.packages("devtools") devtools::install_github("kassambara/ggpubr")

# Check the installed libraries
library(ggpubr)
library(tidyverse)
library(ggplot2)
library(dplyr)
