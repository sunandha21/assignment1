## implementing mapply
a<-c(1:5)
b<-c(6:10)
ma<-mapply(sum,a,b) 
ma

## loop function same as mapply
e<-c() ## creating empty vector
d<-0
f1<-function(a,b)##declaring f1 function
  { 
for(i in 1:length(a)
    {
  d<-d+1
  e[d]<-sum(a[i],b[i])
     }
     return(e)
  }
f1(a,b)

##comparing performance of f1 and mapply function
mb1<-microbenchmark(ma,f1(a,b))
mb1
plot(mb1)
