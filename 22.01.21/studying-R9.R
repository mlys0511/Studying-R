library(dplyr)
exam<-read.csv("C:/Users/kkang/Desktop/R 실습자료/csv_exam.txt")
exam%>%arrange(math)
exam%>%arrange(desc(math))
exam%>%arrange(class,math)

library(ggplot2)
mpg<-as.data.frame(ggplot2::mpg)
mpg
mpg_audi<-mpg%>%filter(manufacturer=="audi")
mpg_audi%>%arrange(desc(hwy))
head(mpg_audi)

exam%>%mutate(total=math+english+science)%>%head
exam%>%mutate(mean=(math+english+science)/3)%>%head
exam%>%mutate(test=ifelse(science>=60,"pass","fail"))%>%head
exam%>%mutate(total=math+english+science,mean=(math+english+science)/3,test=ifelse(science>=60,"pass","fail"))%>%arrange(total)%>%head

mpg_a<-mpg%>%mutate("cty+hwy"=cty+hwy)%>%head
mpg_a<-mpg%>%mutate("cty+hwy"=cty+hwy,"cty+hwy_mean"=(cty+hwy)/2)%>%head
mpg_a
mpg_a<-mpg%>%arrange(desc("cty+hwy_mean"))%>%head(3)
mpg_a