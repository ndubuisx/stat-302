# Author: Emmanuel Ndubuisi, Date: Apr 4, 2022, Purpose: Generate dnorm(), pnorm(), and qnorm() distribution plots

# Generate some dummy data with a function seq
z<-seq(-3.5,3.5,0.1)  
q<-seq(0.001,0.999,0.001) 

dStandardNormal <- data.frame(Z=z, Density=dnorm(z, mean=0, sd=1), Distribution=pnorm(z, mean=0, sd=1))  

qStandardNormal <- data.frame(Q=q, Quantile=qnorm(q, mean=0, sd=1))  

plot(dStandardNormal$Distribution, dStandardNormal$Density)

plot(qStandardNormal$Q, qStandardNormal$Quantile)
