# using deplyr package
+ df1
+ library(deplyr)
+ df1 %>% group_by(gender) %>% summarise(mean(marks), mean(marks2))
+ 
  + 
  + df1 %>% group_by(gender) %>% summarise(max(marks), min(marks2))
+ df1 %>% group_by(course, gender) %>% summarise(mean(marks),mean(marks2))
+ 
  + 
  + df1 %>% group_by(course, gender) %>% count
+ 