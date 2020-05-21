install.packages("dotplot")
#install.packages("randomForest")
library(randomForest)
library(dotplot)
library(tidyr)

#binary 22oz
dat=read.csv("random 22oz binary.csv",header=TRUE, na.strings = "")
zforest<- rfImpute(x=dat[,2:7], y=dat[,1], ntree=5000)
test=randomForest(y=zforest[,1],x=zforest[,2:7],ntree=5000)
varImpPlot(test,main="",n.var=6)

#ratio 22oz
dat=read.csv("random 22oz ratio.csv",header=TRUE, na.strings = "")
zforest<- rfImpute(x=dat[,2:7], y=dat[,1], ntree=5000)
test=randomForest(y=zforest[,1],x=zforest[,2:7],ntree=5000)
varImpPlot(test,main="",n.var=6)

#binary 44oz
dat=read.csv("random 44oz binary.csv",header=TRUE, na.strings = "")
zforest<- rfImpute(x=dat[,2:7], y=dat[,1], ntree=5000)
test=randomForest(y=zforest[,1],x=zforest[,2:7],ntree=5000)
varImpPlot(test,main="",n.var=6)

#ratio 44oz
dat=read.csv("random 44oz ratio.csv",header=TRUE, na.strings = "")
zforest<- rfImpute(x=dat[,2:7], y=dat[,1], ntree=5000)
test=randomForest(y=zforest[,1],x=zforest[,2:7],ntree=5000)
varImpPlot(test,main="",n.var=6)

#binary region
ok <- c("Weeds location","Tillage","Irrigation","Crop","Region","Weed species")
dat=read.csv("random region.csv",header=TRUE, na.strings = "")
zforest<- rfImpute(x=dat[,2:7], y=dat[,1], ntree=5000)
test=randomForest(y=zforest[,1],x=zforest[,2:7],ntree=5000)
graph <- varImpPlot(test,main=NULL, n.var=6,labels = ok, sort = TRUE)
#dotchart(graph, labels = NULL, mar = 5)

test

help(varImpPlot)
help(dotchart)

#conf <- test$confusion
#conf


#regresssion region
dat=read.csv("random region regression.csv",header=TRUE, na.strings = "")
zforest<- rfImpute(x=dat[,2:7], y=dat[,1], ntree=5000)
test=randomForest(y=zforest[,1],x=zforest[,2:7],ntree=5000)
importance(test, type=1)

varImpPlot(test,main="Random Forest variable importance",n.var=6)
test
#conf <- test$confusion
#conf

help("importance")

test
