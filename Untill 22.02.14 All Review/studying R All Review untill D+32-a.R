library(ggplot2)
library(dplyr)

mpg<-as.data.frame(ggplot2::mpg)
mpg1<-mpg
mpg2<-mpg
mpg_a<-mpg
mpg_b<-mpg
mpg_a<-mpg%>%filter(displ<=4)
mpg_b<-mpg%>%filter(displ>=5)
mean(mpg_a$hwy)
mean(mpg_b$hwy)
mpg_c<_mpg
mpg_c<-mpg%>%filter(manufacturer=="audi")
mpg_d<-mpg%>%filter(manufacturer=="toyota")
mean(mpg_c$cty)
mean(mpg_d$cty)
mpg_new<-mpg%>%filter(manufacturer%in%c("chevrolet","ford","honda"))
mean(mpg_new$hwy)

mpg_1<-mpg%>%select(class,cty)
mpg_e<-mpg_1%>%filter(class=="suv")
mpg_f<-mpg_1%>%filter(class=="compact")
mean(mpg_e$cty)
mean(mpg_f$cty)

mpg_g<-mpg%>%filter(manufacturer=="audi")%>%arrange(desc(hwy))%>%head(10)
mpg_g
