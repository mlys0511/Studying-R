library(ggplot2)
library(dplyr)
test<-c(80,60,70,50,90)
test
mean(test)
test_mean<-mean(test)
test_mean

test<-data.frame(score=c(80,60,70,50,90))
test
mean(test$score)
test_mean<-mean(test$score)
test_mean

store<-data.frame(pr=c("apple","str","water"),p=c(1800,1500,3000),s=c(24,38,13))
store
store_mean<-mean(store$p)
store_mean
store_sale<-mean(store$s)
store_sale

mpg<-head(mpg)
mpg
mpg<-rename(mpg,city=cty,highway=hwy)
mpg

mpg1<-mpg%>%filter("displ"<=4)
mpg2<-mpg%>%filter("displ">=5)
mean(mpg1$highway)
mean(mpg2$highway)

mpg_audi<-mpg%>%filter(manufacturer=="audi")
mpg_toyota<-mpg%>%filter(manufacturer=="toyota")
mpg_audi
mpg_toyota
mpg_audi<-mean(mpg_audi$city)
mpg_toyota<-mean(mpg_toyota$city)
mpg_audi
mpg_toyota
mpg<-mpg%>%filter(manufacturer%in%c("chevrolet","ford","honda"))
mpg
mean(mpg$highway)

mpg_a<-mpg%>%select(class,city)
mpg_a

mpg_b<-mpg%>%filter(class=="suv")
mpg_c<-mpg%>%filter(class=="compact")
mpg_b<-mean(mpg_b$city)
mpg_c<-mean(mpg_C$city)
