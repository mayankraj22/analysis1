# factors
(gender=sample(c('M','F'),size=20,replace=T))
genderF=factor(gender)
summary(gender)

(likescale=sample(c('Ex','Good','Sat','Poor'),size=20,replace=T))
summary(likescale)
likescaleF=factor(likescale)
summary(likescaleF)
class(likescaleF)
likscaleOF=factor(likescale,ordered=T,levels=c('Poor','Sat','Good','Ex'))
summary(likscaleOF)
likscaleOF
barplot(table(likescaleF),col=1:4)
barplot(table(likscaleOF),col=1:4)

