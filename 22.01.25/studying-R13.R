library(dplyr)
exam<-read.csv("C:/Users/kkang/Desktop/R 실습자료/csv_exam.txt")
exam[c(3,8,15),"math"]<-NA
exam
exam%>%summarise(mean_math=mean(math))
exam%>%summarise(mean_math=mean(math,na.rm = T))
exam%>%summarise(mean_math=mean(math,na.rm = T),sum_math=sum(math,na.rm = T),median_math=median(math,na.rm = T))
mean(exam$math,na.rm = T)
exam$math<-ifelse(is.na(exam$math),55,exam$math)
table(is.na(exam$math))
exam
mean(exam$math)

mpg<-as.data.frame(ggplot2::mpg)
table(is.na(mpg$drv))
table(is.na(mpg$hwy))
mpg%>%filter(is.na(hwy))%>%group_by(drv)%>%summarise(mean_hwy=mean(hwy))
