install.packages("arules")
install.packages("arulesViz")
library(arules)
library(arulesViz)
rm<-read.transactions("C:/Users/kkang/Desktop/rm.txt",format="basket",sep=",")
rm
rules=apriori(rm,parameter = list(support=0.1,confidence=0.8))
rules
inspect(rules)
inspect(head(sort(rules,by="support"),10))
inspect(head(sort(rules,by="confidence"),10))
inspect(head(sort(rules,by="lift"),10))
plot(rules,method="scatterplot")

wm<-read.transactions("C:/Users/kkang/Desktop/sd.txt",format = "basket",sep = ",")
wm
rules=apriori(wm,parameter = list(support=0.1,confidence=0.8))
rules
inspect(rules)
inspect(head(sort(rules,by="support"),10))
inspect(head(sort(rules,by="confidence"),10))
inspect(head(sort(rules,by="lift"),10))
plot(rules,method = "scatterplot")
