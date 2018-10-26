# Regression Analysis

# Simple Linear with 1 IV and 1 DV



data(women)

women

names(women)

str(women)



cov(women$height, women$weight)

#69 : which show positive relationship between height and weight



cor(women$height, women$weight)

#0.995 : which shows Strong and Positive relationship betw height & weight

0.995^2 # also equal R^2 value in this case (Simple Linear Regression)



plot(x=women$height, y=women$weight, type='b')

abline(lm(weight ~ height, data=women), col='red')

names(women)  #x- IV, y -DV

fit1 = lm(weight ~ height, data=women)  # creating a model

summary(fit1)  #summary of the Model
#Predict for ht=69.5 and 70.5
(new=data.frame(height =c(69.5,70.5)))
(p1=predict( fit1,newdata=new ))
cbind(new,p1)
plot(fit1)

name(mtcars)
fit2=lm(mpg~wt,data=mtcars)
range(mtcars$wt)
summary(fit2)
(new1=data.frame(wt=c(2.3,3.6,4)))
(p2=predict(fit2,newdata=new1))
cbind(new1,p2)
plot(fit2)
