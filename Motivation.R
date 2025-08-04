library(downloader)
url="https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/msleep_ggplot2.csv"
filename <- basename(url) #takes last part of url and stores as string
download(url,filename) #Downloads and saves it to current working directory with the name from filename
#downloading using scripts ensures that code is reproducible and sharable without having to download manually
#new dataset for later

library(dplyr)
Femalew=read.csv('femaleMiceWeights.csv')
View(Femalew)


#body weight higher in mice fed the hf diet after the first week
#statistical inference
#we want to know if the hight fat diet makes mice heavier

control=filter(Femalew,Diet=="chow")%>%
  select(Bodyweight)%>%unlist #bodyweight from chow diet
treatment=filter(Femalew,Diet=="hf")%>%
  select(Bodyweight)%>%unlist #bodyweight from hf diet
#from looking at the data, it can be concluded that its not always the case that hf diet mice are heavier than controls
mean(treatment) #26.83417
mean(control) # 23.81333
#treatment is heavier
