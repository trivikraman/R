#ggplot2,plotly
#gg-grammer of graphics
library(tidyverse)
library("ggplot2")
library("palmerpenguins")
data(penguins,package="palmerpenguins")
ggplot(penguins)+
#this alone create empty plot,+ creates layer in plot
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))  
ggplot(penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g),color="purple") 
ggplot(penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,alpha=species)) #alpha=species/shape=species/size=species 
