#Model 1:
library(queueing)
i_mm1 = NewInput.MM1(lambda = 8, mu = 10)
o_mm1 = QueueingModel(i_mm1)
print(summary(o_mm1) ,  digits = 2)

#Model 2:
library(queueing)
i_mm1 = NewInput.MMC(lambda = 10,mu = 15, c =2)
o_mm1 = QueueingModel.i_MMC(i_mm1)
print(summary(o_mm1) ,  digits = 2)

#Model 3:
library(queueing)
i_mm1 = NewInput.MM1K(lambda = 30,mu = 20, k=15)
o_mm1 = QueueingModel.i_MM1K(i_mm1)
print(summary(o_mm1) ,  digits = 2)
