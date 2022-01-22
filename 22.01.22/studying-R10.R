library(dplyr)
exam<-read.csv("C:/Users/kkang/Desktop/R 실습자료/csv_exam.txt")
exam%>%summarise(mean_math=mean(math))
exam%>%group_by(class)%>%summarise(mean_math=mean(math))
exam%>%group_by(class)%>%summarise(mean_math=mean(math),sum_math=sum(math),median_math=median(math),n=n())

mpg<-as.data.frame(ggplot2::mpg)
mpg
mpg%>%group_by(manufacturer,drv)%>%summarise(mean_cty=mean(cty))%>%arrange(desc(mean_cty))%>%head(10)
mpg%>%group_by(class)%>%summarise(mean_cty=mean(cty))%>%arrange(desc(mean_cty))
mpg%>%group_by(hwy)%>%summarise(mean_hwy=mean(hwy))%>%arrange(desc(hwy))%>%head(3)
mpg%>%filter(class=="compact")%>%group_by(manufacturer)%>%summarise(count=n())%>%arrange(desc(count))
