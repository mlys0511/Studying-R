library(ggplot2)
ggplot(data=economics,aes(x=date,y=unemploy))+geom_line()
ggplot(data=economics,aes(x=date,y=psavert))+geom_line()
ggplot(data=mpg,aes(x=drv,y=hwy))+geom_boxplot()

library(dplyr)
class_mpg<-mpg%>%filter(class%in%c("compact","subcompact","suv"))
ggplot(data=class_mpg,aes(x=class,y=cty))+geom_boxplot()
