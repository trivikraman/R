install.packages("Tmisc")
library(Tmisc)
data(quartet)
View(quartet)

quartet %>% 
  group_by(set) %>% 
  summarize(mean(x),sd(x),mean(y),sd(y),cor(x,y))
#summary shows that they are identical but viz helps to
#investigate further--shows they are different

