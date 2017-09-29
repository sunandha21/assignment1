##implementing rapply
x<-list(1,list(2,3),4,list(5,6,7)) ## nested list
ra<-rapply(x, function(x){x^2})  ## defining rapply function
ra

##loop function that does same as rapply
f2<-function(p) ## defining f2()
{
  for(i in 1:length(p))
    {
     for(j in 1:length(p[[i]])){
     d<-d+1
     e[d]<-x[[i]][[j]]^2
     }}
   return(e)
   }
f2(p)

##comparing performance of f2 and rapply functions
mb2<-microbenchmark(ra,f2(p))
mb2
plot(mb2)