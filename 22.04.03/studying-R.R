cars<-cars
head(cars)
lm(dist~speed,data=cars)
dist1=-17.579+3.932*6
dist2=-17.579+3.932*15
dist1;dist2
cars$speed2<-cars$speed**2
head(cars)
lm(dist~speed+speed2,data=cars)
dist4=2.47014+0.91329*6+0.09996*36
dist5=2.47014+0.91329*15+0.09996*225
dist4;dist5

plot(cars)
dim(cars)
nrow(cars)
ncol(cars)

rm(cars)

head(cars)
plot(cars)
xat=seq(0,25,by=5)
yat=seq(0,120,by=24)
