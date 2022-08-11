#1.Example
library("lpsolve")
objectivefn=c(5,3,8)
objectcons=matrix(c(2,3,4,3,4,0,1,8,6),ncol=3,byrow=TRUE)
objdir=c("<=","<=",">=")
rhsv=c(140,150,200)
soln=lp("max",objectivefn,objectcons,objdir,rhsv,compute.sens = TRUE)
soln$solution
soln
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#2.Diet problem
library("lpsolve")
objectivefn=c(45,40,85,65)
objectcons=matrix(c(3,4,8,6,2,2,7,5,6,4,7,4),ncol=4,byrow=TRUE)
objdir=c(">=",">=",">=")
rhsv=c(800,200,700)
soln=lp("min",objectivefn,objectcons,objdir,rhsv,compute.sens = TRUE)
soln$solution
soln
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#3.Company problem
library("lpsolve")
objectivefn=c(40,30,60)
objectcons=matrix(c(2,3,3,4,0,3,2,5,0),ncol=3,byrow=TRUE)
objdir=c("<=","<=","<=")
rhsv=c(440,470,430)
soln=lp("max",objectivefn,objectcons,objdir,rhsv,compute.sens = TRUE)
soln$solution
soln
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#4.Lpp
library("lpsolve")
objectivefn=c(3,2,5)
objectcons=matrix(c(1,4,0,3,0,2,1,2,1),ncol=3,byrow=TRUE)
objdir=c("<=","<=","<=")
rhsv=c(420,460,430)
soln=lp("max",objectivefn,objectcons,objdir,rhsv,compute.sens = TRUE)
soln$solution
soln-
  