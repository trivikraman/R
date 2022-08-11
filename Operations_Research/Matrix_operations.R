
#1st program
k1=matrix(c(2,3,5,7,11,13,17,19,23,29,31,37,41,43,47),ncol=3,byrow = TRUE)
print(k1)

#2nd program
k2=matrix(c(1:9),ncol=3,byrow=TRUE)
m2= k2*k2
m3=m2*k2
mdotm=k2%*%k2
print(k2)
print(m2)
print(m3)
print(mdotm)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#3rd program
k2=matrix(c(1:9),ncol=3,byrow=TRUE)
print(k2)
k3=k2[c(2,3),c(1,2)]
k4=k2[c(1,1),c(2,2)]
k5=k2[c(1,3),c(3,1)]
print(k3)
print(k4)
print(k5)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#4th program
k6=matrix(LETTERS[1:16],ncol=4,byrow=TRUE)
print(k6)
k7=k6[c(4,2)]
k8=k6[c(2,4)]
k9=k6[c(2,2)]
k10=k6[c(1,4)]
print(k7)
print(k8)
print(k9)
print(k10)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#5th program
k11=matrix(c(1:9),ncol=3)
k12=matrix(c(1:9),ncol=3,byrow=TRUE)
k13=k11+k12
k14=k11-k12
k15=k11%*%k12
print(k13)
print(k14)
print(k15)
