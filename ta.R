##implementing tapply function
dat<-read.csv("test.csv") ##import data from test.csv file
dat
ta<-tapply(dat$rating,dat$season,mean) ##find mean of rating grouping season using tapply function
ta

##loop function that does same as tapply function
dat<-read.csv("test.csv")
ss<-sort(unique(dat$season))
ss
r<-numeric(length(ss))
f3<-function(ss,r){
  for(i in seq_along(ss)){
  rating[i]<-mean(dat$rating[dat$season==ss[i]])
  }
  return(rating)}
f3(ss,r)

##comparing performance of tapply and loop function
mb3<-microbenchmark(ta,f3(ss,r))
mb3
plot(mb3)