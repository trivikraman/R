objectivef = c(200, 150, 150)
firstconstr = c(10,3,10)
secondconstr = c(5, 5,5)
rhsfir = 100
rhsseco = 60
library(boot)
simplex(a = objectivef, A1 = rbind(firstconstr, secondconstr),
             b1 = c(rhsfir, rhssec), maxi= T)