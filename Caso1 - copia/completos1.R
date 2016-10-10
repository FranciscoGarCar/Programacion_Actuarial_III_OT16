completos<- function(directorio="~/GitHub/Programacion_Actuarial_III_OT16/specdata/specdata",id=1:332){
  v<-vector("integer")
  for (i in id) {
    if (i<10){
      a<-paste("00",i,".csv",sep="")
    }
    if (i==10){
      a<-paste("0",i,".csv", sep="")
    }
    if (i>10 && i<100){
      a<-paste("0",i,".csv", sep="")
    }
    if (i==100){
      a<-paste(i,".csv", sep="")
    }
    if(i>100){
      a<-paste(i,".csv", sep="")
    }
    getwd()
    setwd(directorio)
    c<-read.csv(a)
    suma<-0
    for (j in 1:nrow(c)){
      g<-complete.cases( c[j,])
      if(g==T){
        suma<-suma+1
        
      }
      
    }
    v<-c(v,suma)
    
    
  }
  k=id
  ya<-data.frame(id=k,nobs=v)
  print(ya)
}

completos( ,1:2)
