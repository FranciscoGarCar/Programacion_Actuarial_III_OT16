lm
lm<-function(x) {x*x}
lm
rm(lm)
lm

search()
library()

hacer.potencia<-function(n){
  potencia<-function(x){
    x^n
  }
}
cub<-hacer.potencia(3)
cua<-hacer.potencia(2)
cub(3)
cua(3)

x<-as.Date("1970-01-01")
x
unclass(x)
unclass(as.Date("1969-12-01"))

x<-as.Date("1970-01-01")
as.POSIXct(x)
as.POSIXlt(x)
is(as.POSIXct(x))
is(as.POSIXlt(x))


x<-list(a=1:5, b=rnorm(10000))
lapply(x,mean)
sapply(x,mean)

x<-1:4
lapply(x,runif,max=15, min=5)
sapply(x,runif,max=15,min=5)


x<-list(a=1:5,b=rnorm(10),c=rnorm(10,3),d=rnorm(10,5))
lapply(x,mean)
sapply(x,mean)

x<-matrix(rnorm(200),20,10)
apply(x,2,mean)
apply(x,1,sum)

a<-array(rnorm(2*2*10),c(2,2,10))
a

library(datasets)
a<-airquality
b<-a[,5]
b
s<-split(a,b)
sapply(s,function(x) colMeans(x[,1:4],na.rm=T))




