set.seed(10)
x<-rbinom(100,1,0.5)
e<-rnorm(100,0,1)
y<-0.5+6*x+e
summary(y)
plot(x,y, main="Modelo lineal",col="dark red")

set.seed(1)
x<-rnorm(100)
log.mu<-0.5+0.3*x
y<-rpois(100,exp(log.mu))
summary(y)
plot(x,y, main ="Modelo Poisson",col="forestgreen")
     
