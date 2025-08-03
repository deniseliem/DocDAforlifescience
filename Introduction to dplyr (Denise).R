#Introduction to dplyr
install.packages('dplyr')
#Installing dplyr package
#dataset
FemaleW=read.csv('femaleMiceWeights.csv')
View(FemaleW) #View Data
library(dplyr)

#filter=choose row
#select= choose column


controls=filter(FemaleW, Diet=='hf') #filter high-fat diet
View(controls) #only view hf diets
controls= select(controls, Bodyweight)
unlist(controls) #change to numeric vector

#########easier and more compact way ####### in one line
controls=filter(FemaleW, Diet=='hf') %>%
  select(Bodyweight) %>% unlist

# %>% sends ouput of  first function to the next function