data("ToothGrowth")
View(ToothGrowth)
install.packages("dplyr")
library('dplyr')
filtered_g<-filter(ToothGrowth,dose==0.5)
View(filtered_g)
arrange(filter(ToothGrowth,dose==0.5),len)
filtered_toothgrowth<-ToothGrowth %>% 
  filter(dose==0.5) %>% 
  arrange(len)