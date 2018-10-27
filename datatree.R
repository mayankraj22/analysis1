library(rpart)
library(rpart.plot)

gender=sample(c('M','f'),size=10000,prob=c(0.6,0.4),replace=T)
age=ceiling(rnorm(1000,35,5))
buy=sample(c('Yes','No'),size=10000,prob=c(0.5,0.5),replace=T)
df=data.frame(buy,age,gender)
head(df)
dtree1=rpart(buy~gender+age,data=df,minsplit=10,minbucket=4,cp=0.005) #cp=-1
dtree1
dtree1$variable.importance
rpart.plot(dtree1,cex=.8,nn=T)
