#NWCR
#Problem1
library(TransP)
#Input matrix where last row is the Demand and last column is the Supply
ex_matrix=data.frame(M1=c(13,10,25,17,210),M2=c(25,19,10,24,240),
                     M3=c(8,18,15,18,110),M4=c(13,5,14,13,80),M5=c(20,12,18,19,170),
                     Supply=c(430,150,100,130,810),
                     row.names = c("W1","W2","W3","W4","Demand"))


nwc(ex_matrix)

#Problem2
library(TransP)
#Input matrix where last row is the Demand and last column is the Supply
ex_matrix=data.frame(M1=c(1,3,4,20),M2=c(2,3,2,40),
                     M3=c(1,2,5,30),M4=c(4,1,9,10),
                     Supply=c(30,50,20,0),
                     row.names = c("W1","W2","W3","Demand"))


nwc(ex_matrix)
