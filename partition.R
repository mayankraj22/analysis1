#DataFrame----

#create Vectors of student names: divide into 2 groups  
studentname=paste('Student',1:10000,sep='_')
group1= 60%
group2= 40%

xy=101:200
xy=studentname
length(xy)
index=sample(x=length(xy),size=.6*length(xy))
train=xy[index]
test=xy[-index]
train
test
# Creat a large DF
(rollno = 1:1000)

sname = paste('student',1:1000,sep='')

gender = sample(x=c('Male','Female'), size=1000, replace=T, prob=c(.6,.4))

marks = ceiling(rnorm(1000,60,10))
df = data.frame(sname, gender, marks)
head(df)
table(df$gender)
length(df);nrow(df)
#Split DF in to 2 parts 70% and 30%
# train -70% of df; test-30% of df
index2=sample(x=nrow(df),size=.7*nrow(df))
train- 70% of Df
test - 30% of df
index2
length(index2)
df[1:5,]
df[index2,]
train2=df[index2,]
nrow(train2)
test2=df[-index2, ]
nrow(test2)
#using caret
library(caret)
set.seed(123)
table(df$gender);prop.table(table(df$gender))
(index3=createDataPartition(y=df$gender,p=0.5,list=F))
length(index3)
(train3=df[index3,])
(test3=df[-index3, ])
(t3a=table(train3$gender));prop.table(t3a)
(t3b=table(test3$gender));prop.table(t3b)
#proportion of am is almost same in both the samples
 
