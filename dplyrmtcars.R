#Analysis of dataset mtcars using dplyr
#Filename:dplyr-mtcars.R
library(dplyr)
?mtcars
mtcars
# Structure of data set
str(mtcars)# Structure
dim(mtcars) #dimensions
names(mtcars) # Column names
rownames(mtcars) # row names
summary(mtcars) #Summary of dataset
# summary activities on mtcars
t1=table(mtcars$am)
pie(t1)
19/32*360
pie(t1, labels=c('Auto','Manuual'))
t2=table(mtcars$gear)
pie(t2)
barplot(t2)
barplot(t2,col=1:3)
barplot(t2,col=1:3,horiz=T)
barplot(t2,col=c('green','blue','yellow'),xlab='Gear',ylab='No of cars',ylim=c(0,20))
title(main='Distribution of gears of cars',sub='No of gears')
#using dplyr %>% is chaining function
mtcars %>% select(mpg,gear) %>% slice(c(1:5,10))
#Select for Columns, slice for rows
mtcars %>% arrange(mpg) # ascending order of mileage
mtcars %>% arrange(am,desc(mpg)) %>% select(am,mpg) # ascending order of am, descending order of mpg
mtcars %>% mutate(rn=rownames(mtcars)) %>% select(rn,mpg)
# display rownmaes with mpg
mtcars %>% slice(c(1,5,7))
mtcars %>% sample_n(3)
mtcars %>% sample_frac(.2)
mtcars %>% select(sample(x=c(1:11),size=2)) %>% head
mtcars %>% mutate(newmpg=mpg*1.1)
mutate(mtcars, newmpg=mpg*1.2)
 #type of Tx, mean(mgp)
mtcars %>% group_by(am) %>% summarise(MeanMPG=mean(mpg))
mtcars %>% group_by(am) %>% summarise(MeanMPG=mean(mpg),MaxHP=max(hp), MinwT=min(wt))
mtcars %>% group_by(gear,cyl) %>% summarise(MeanMPG =mean(mpg))
