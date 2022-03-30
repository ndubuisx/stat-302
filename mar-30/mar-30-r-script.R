# Author: Emmanuel Ndubuisi; Date: Mar 30 2022; Purpose: To Generate Normal Distribution Curve for Dummy Data

# genrate dummy data
x <- seq(-10, 10, by = .1)

# use dnorm() with some mean and standard deviation values
y <- dnorm(x, mean=2.5, sd=0.5)

# plot x and y to generate a scatter plot for normal distribution curve
plot(x, y)
